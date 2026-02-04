from typing import Any, Iterable

VALID_LITERAL_CHARS = set("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_-.+")
BASIC_ESCAPE_SEQUENCES = {"b":"\x08","s":" ","t":"\t","n":"\n","f":"\x0c","r":"\r"}

def dump(value: Any, separators: tuple[str,str] = (",",":"), **kwargs) -> str:
    if isinstance(value,int):
        if kwargs.get("write_smallest_integer_data_type",False):
            if -128 <= value < 128:
                return "%sb" % value
            if -32768 <= value < 32768:
                return "%ss" % value
            if -2147483648 <= value < 2147483648:
                return str(value)
            if -9223372036854775808 <= value < 9223372036854775808:
                return "%sL" % value
            raise ValueError("This number cannot be represented by SNBT.")
        return str(value)
    
    if isinstance(value,float):
        float_data_type = kwargs.get("float_data_type",None)
        if float_data_type == "float":
            return "%sf" % value
        if float_data_type == "double":
            return "%sd" % value
        return str(value)
    
    if isinstance(value,str):
        if (kwargs.get("is_key") == True) and len(value) > 0 and set(value).issubset(VALID_LITERAL_CHARS):
            return value
        if (kwargs.get("quote_type",None) != "'") and ((kwargs.get("quote_type",None) == "'") or (value.find("'") < value.find('"'))):
            return "'%s'" % value.replace('\\','\\\\').replace("'","\\'").replace('\n','\\n').replace('\r','').replace('\t','\\t')
        return '"%s"' % value.replace('\\','\\\\').replace('"','\\"').replace('\n','\\n').replace('\r','').replace('\t','\\t')
    
    if value == False:
        return "false"
    
    if value == True:
        return "true"
    
    if isinstance(value,dict):
        return (
            "{%s}"
            % separators[0].join(
                [
                    dump(k,is_key=True)
                    + separators[1]
                    + dump(v)
                    for k,v in value.items()
                ]
            )
        )
    
    if isinstance(value,Iterable):
        is_int_list = False
        if (len(value) > 0) and kwargs.get("write_int_lists",True):
            is_int_list = True
            for v in value:
                if not isinstance(v,int):
                    is_int_list = False
                    break
        if is_int_list:
            return (
                "[I;%s]"
                % separators[0].join(
                    [
                        dump(v,write_smallest_integer_data_type=False)
                        for v in value
                    ]
                )
            )
        return (
            "[%s]"
            % separators[0].join(
                [
                    dump(v)
                    for v in value
                ]
            )
        )
    
    raise TypeError

class InvalidPush(Exception):
    pass

class ParserStackObject:
    #def __init__(self) -> None:
        
    def receive_char(self, char: str) -> None:
        pass

    def push(self):
        return self.value

    def pull(self) -> None:
        raise InvalidPush

class ParserStack:
    def __init__(self) -> None:
        self.entries: list[ParserStackObject] = []
        self.result: Any = None
    
    def append(self, value: ParserStackObject) -> None:
        self.entries.append(value)
    
    def push_top(self) -> None:
        if len(self.entries) == 1:
            self.result = self.entries[0].push()
            return

        self.entries[-2].pull(
            self.entries.pop(-1).push()
        )

class Parser:
    def __init__(self, snbt: str) -> None:
        self.string: str = snbt
        self.stack: Any = ParserStack()

        i = 0
        while i < len(self.string):
            c = self.string[i]

            if c == '"':
                substring = ""
                i += 1
                while ((c := self.string[i]) != '"') and (i < len(self.string)):
                    if c == "\\":
                        c = self.string[(i := i+1)]

                        if BASIC_ESCAPE_SEQUENCES.get(c) != None:
                            substring += BASIC_ESCAPE_SEQUENCES[c]
                        else:
                            substring += self.string[i+1]

                        i += 1
                        continue
                    
                    substring += self.string[i+1]
                    i += 1


            i += 1
    
    def parse_string(self, start_index: int) -> str:
        quote_type = self.string[start_index]

        i = start_index+1
        
    class StackCompound(ParserStackObject):
        def __init__(self) -> None:
            self.value: dict = {}
            self.expecting: str = None 
        
        #def receive_
        


def load(snbt: str) -> Any:
    stack = []

    i = 0
    while i < len(value):
        char = value[i]

        if char == '{':
            stack.append()
