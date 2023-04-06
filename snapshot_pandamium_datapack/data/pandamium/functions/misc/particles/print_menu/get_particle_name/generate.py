trails = [
    (1,'Glint'),
    (2,'Dragon Breath'),
    (3,'End Rod'),
    (4,'Flames'),
    (5,'Musical Notes'),
    (6,'Soul Fire Flames'),
    (7,'Souls'),
    (8,'Hearts'),
    (9,'Angry Clouds'),
    (10,'Witch'),
    (11,'Crit Hits'),
    (12,'Firework Sparks'),
    (13,'Void Fog'),
    (14,'Totem of Undying'),
    (15,'Redstone Dust'),
    (16,'Popping Bubbles'),
    (17,'Ash'),
    (18,'White Ash'),
    (19,'Crying Obsidian'),
    (20,'Enchants'),
    (21,'Rainbow'),
    (22,'Smoke'),
    (23,'Snowflakes'),
    (24,'Campfire Smoke'),
    (25,'Conduit Eyes'),
    (26,'Nectar'),
    (27,'Warped Spores'),
    (28,'Squid Ink'),
    (29,'Lava Drips'),
    (30,'Sculk Sensor'),
    (31,'Glow'),
    (32,'Glow Squid Ink'),
    (33,'Blossom Spores'),
    (34,'Wax On'),
    (35,'Wax Off'),
    (36,'Light Bulb'),
    (37,'Electric Sparks'),
    (38,'Copper Scrape'),
    (39,'Sculk Souls'),
    (40,'Sculk Bubbles'),
    (41,'Sculk Charge'),
    (42,'Cherry Leaves'),

    (50,'Hamster Wheel'),
    (51,'Pepé'),
    (52,'Technoblade'),

    (64,'Halo'),
    (65,'Horns'),
    (66,'Olex'),
    (67,'Tears'),
    (68,'Blush'),
    (69,'Axolotl'),
    (70,'Warden Ears'),
    (71,'Glow Squid'),
    (72,'Goat'),
    (73,'Angel'),
    (74,'Devil'),
    (75,'Phoenix'),
    (76,'Arrow'),
    (77,'Exclamation'),
    (78,'Question'),
    (79,'Storm'),
    (80,'Lava Storm'),
    (81,'Frog'),
    (82,'Allay Wings'),
    (83,'Crown'),
    (84,'Phoenix Ears'),
    (85,'Sniffer Ears'),
    (86,'Camel Ears'),
    (87,'Vex Wings'),
    (88,'Dragon Wings'),
    (89,'Phantom Wings'),
    (90,'Sundroid'),
]

death_events = [
    (1,'Explosion'),
    (2,'Firework Rocket'),
    (3,'Iron'),
    (4,'Gold'),
    (5,'Diamond'),
    (6,'Gore'),
    (7,'Slime'),
    (8,'Amethyst'),
    (9,'Ender Eye'),
    (10,'Fire'),
    (12,'Souls'),
    (13,'Moss'),
    (14,'Snow'),
    (14,'Smoke'),
    (15,'Witch'),
    (16,'Storm'),
    (17,'Shriek'),
    (18,'Sonic Boom'),
]



def quick_sort(particles_list):
    if len(particles_list) <= 1: return particles_list

    pivot = particles_list.pop((len(particles_list)-1)//2)
    left = []
    right = []

    for particle in particles_list:
        if particle[0] < pivot[0]:
            left.append(particle)
        else:
            right.append(particle)
    
    return quick_sort(left) + [pivot] + quick_sort(right)


def generate_tree(particles,name):
    particles = quick_sort(particles)
    MIN, MAX = 0, len(particles)-1
    def rec(a,b):
        L = b-a
        if a == b:
            return 'execute if score <%s_id> variable matches %s run data modify storage pandamium:particles %s set value \'{"text":"%s"}\'\n' % (name, particles[a][0], name, particles[a][1].replace('"','\\"').replace('\\','\\\\'))
        else:
            _range = f'{particles[a][0]}..{particles[b][0]}'
            with open(f'{name}/'+('run.mcfunction' if (a == MIN and b == MAX) else f'{_range}.mcfunction'),'w') as file:
                file.write(rec(a,a+(L//2)))
                file.write(rec(a+(L//2)+1,b))
            return f"execute if score <{name}_id> variable matches {_range} run function pandamium:misc/particles/print_menu/get_particle_name/{name}/{_range}\n"
    rec(MIN,MAX)
generate_tree(trails,"trail")
generate_tree(death_events,"death_event")

print('done')
