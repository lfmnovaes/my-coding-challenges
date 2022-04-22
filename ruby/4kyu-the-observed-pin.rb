# https://www.codewars.com/kata/5263c6999e0f40dee200059d/train/ruby
#
# Alright, detective, one of our colleagues successfully observed our target person, Robby the robber. We followed him to a secret warehouse, where we assume to find all the stolen stuff. The door to this warehouse is secured by an electronic combination lock. Unfortunately our spy isn't sure about the PIN he saw, when Robby entered it.
# 
# The keypad has the following layout:
# 
# ┌───┬───┬───┐
# │ 1 │ 2 │ 3 │
# ├───┼───┼───┤
# │ 4 │ 5 │ 6 │
# ├───┼───┼───┤
# │ 7 │ 8 │ 9 │
# └───┼───┼───┘
#     │ 0 │
#     └───┘
# He noted the PIN 1357, but he also said, it is possible that each of the digits he saw could actually be another adjacent digit (horizontally or vertically, but not diagonally). E.g. instead of the 1 it could also be the 2 or 4. And instead of the 5 it could also be the 2, 4, 6 or 8.
# 
# He also mentioned, he knows this kind of locks. You can enter an unlimited amount of wrong PINs, they never finally lock the system or sound the alarm. That's why we can try out all possible (*) variations.
# 
# * possible in sense of: the observed PIN itself and all variations considering the adjacent digits
# 
# Can you help us to find all those variations? It would be nice to have a function, that returns an array (or a list in Java/Kotlin and C#) of all variations for an observed PIN with a length of 1 to 8 digits. We could name the function getPINs (get_pins in python, GetPINs in C#). But please note that all PINs, the observed one and also the results, must be strings, because of potentially leading '0's. We already prepared some test cases for you.
# 
# Detective, we are counting on you!

def get_pins(observed)
  neighbors = {
    '1' => %w[1 2 4],
    '2' => %w[1 2 3 5],
    '3' => %w[2 3 6],
    '4' => %w[1 4 5 7],
    '5' => %w[2 4 5 6 8],
    '6' => %w[3 5 6 9],
    '7' => %w[4 7 8],
    '8' => %w[5 7 8 9 0],
    '9' => %w[6 8 9],
    '0' => %w[0 8]
  }
  return neighbors[observed] if observed.chars.size == 1
  arr = []
  observed.chars.each do |c|
    arr.push(neighbors[c])
  end
  arr.first.product(*arr[1..-1]).map(&:join)
end

p get_pins('8') # ["5", "7", "8", "9", "0"],
p get_pins('11') # ["11", "22", "44", "12", "21", "14", "41", "24", "42"],
p get_pins('369') # ["339","366","399","658","636","258","268","669","668","266","369","398","256","296","259","368","638","396","238","356","659","639","666","359","336","299","338","696","269","358","656","698","699","298","236","239"],
p get_pins('2458') # ["1125", "1127", "1128", "1129", "1120", "1145", "1147", "1148", "1149", "1140", "1155", "1157", "1158", "1159", "1150", "1165", "1167", "1168", "1169", "1160", "1185", "1187", "1188", "1189", "1180", "1425", "1427", "1428", "1429", "1420", "1445", "1447", "1448", "1449", "1440", "1455", "1457", "1458", "1459", "1450", "1465", "1467", "1468", "1469", "1460", "1485", "1487", "1488", "1489", "1480", "1525", "1527", "1528", "1529", "1520", "1545", "1547", "1548", "1549", "1540", "1555", "1557", "1558", "1559", "1550", "1565", "1567", "1568", "1569", "1560", "1585", "1587", "1588", "1589", "1580", "1725", "1727", "1728", "1729", "1720", "1745", "1747", "1748", "1749", "1740", "1755", "1757", "1758", "1759", "1750", "1765", "1767", "1768", "1769", "1760", "1785", "1787", "1788", "1789", "1780", "2125", "2127", "2128", "2129", "2120", "2145", "2147", "2148", "2149", "2140", "2155", "2157", "2158", "2159", "2150", "2165", "2167", "2168", "2169", "2160", "2185", "2187", "2188", "2189", "2180", "2425", "2427", "2428", "2429", "2420", "2445", "2447", "2448", "2449", "2440", "2455", "2457", "2458", "2459", "2450", "2465", "2467", "2468", "2469", "2460", "2485", "2487", "2488", "2489", "2480", "2525", "2527", "2528", "2529", "2520", "2545", "2547", "2548", "2549", "2540", "2555", "2557", "2558", "2559", "2550", "2565", "2567", "2568", "2569", "2560", "2585", "2587", "2588", "2589", "2580", "2725", "2727", "2728", "2729", "2720", "2745", "2747", "2748", "2749", "2740", "2755", "2757", "2758", "2759", "2750", "2765", "2767", "2768", "2769", "2760", "2785", "2787", "2788", "2789", "2780", "3125", "3127", "3128", "3129", "3120", "3145", "3147", "3148", "3149", "3140", "3155", "3157", "3158", "3159", "3150", "3165", "3167", "3168", "3169", "3160", "3185", "3187", "3188", "3189", "3180", "3425", "3427", "3428", "3429", "3420", "3445", "3447", "3448", "3449", "3440", "3455", "3457", "3458", "3459", "3450", "3465", "3467", "3468", "3469", "3460", "3485", "3487", "3488", "3489", "3480", "3525", "3527", "3528", "3529", "3520", "3545", "3547", "3548", "3549", "3540", "3555", "3557", "3558", "3559", "3550", "3565", "3567", "3568", "3569", "3560", "3585", "3587", "3588", "3589", "3580", "3725", "3727", "3728", "3729", "3720", "3745", "3747", "3748", "3749", "3740", "3755", "3757", "3758", "3759", "3750", "3765", "3767", "3768", "3769", "3760", "3785", "3787", "3788", "3789", "3780", "5125", "5127", "5128", "5129", "5120", "5145", "5147", "5148", "5149", "5140", "5155", "5157", "5158", "5159", "5150", "5165", "5167", "5168", "5169", "5160", "5185", "5187", "5188", "5189", "5180", "5425", "5427", "5428", "5429", "5420", "5445", "5447", "5448", "5449", "5440", "5455", "5457", "5458", "5459", "5450", "5465", "5467", "5468", "5469", "5460", "5485", "5487", "5488", "5489", "5480", "5525", "5527", "5528", "5529", "5520", "5545", "5547", "5548", "5549", "5540", "5555", "5557", "5558", "5559", "5550", "5565", "5567", "5568", "5569", "5560", "5585", "5587", "5588", "5589", "5580", "5725", "5727", "5728", "5729", "5720", "5745", "5747", "5748", "5749", "5740", "5755", "5757", "5758", "5759", "5750", "5765", "5767", "5768", "5769", "5760", "5785", "5787", "5788", "5789", "5780"],
p get_pins('14290') # ["11160", "11168", "11180", "11188", "11190", "11198", "11260", "11268", "11280", "11288", "11290", "11298", "11360", "11368", "11380", "11388", "11390", "11398", "11560", "11568", "11580", "11588", "11590", "11598", "14160", "14168", "14180", "14188", "14190", "14198", "14260", "14268", "14280", "14288", "14290", "14298", "14360", "14368", "14380", "14388", "14390", "14398", "14560", "14568", "14580", "14588", "14590", "14598", "15160", "15168", "15180", "15188", "15190", "15198", "15260", "15268", "15280", "15288", "15290", "15298", "15360", "15368", "15380", "15388", "15390", "15398", "15560", "15568", "15580", "15588", "15590", "15598", "17160", "17168", "17180", "17188", "17190", "17198", "17260", "17268", "17280", "17288", "17290", "17298", "17360", "17368", "17380", "17388", "17390", "17398", "17560", "17568", "17580", "17588", "17590", "17598", "21160", "21168", "21180", "21188", "21190", "21198", "21260", "21268", "21280", "21288", "21290", "21298", "21360", "21368", "21380", "21388", "21390", "21398", "21560", "21568", "21580", "21588", "21590", "21598", "24160", "24168", "24180", "24188", "24190", "24198", "24260", "24268", "24280", "24288", "24290", "24298", "24360", "24368", "24380", "24388", "24390", "24398", "24560", "24568", "24580", "24588", "24590", "24598", "25160", "25168", "25180", "25188", "25190", "25198", "25260", "25268", "25280", "25288", "25290", "25298", "25360", "25368", "25380", "25388", "25390", "25398", "25560", "25568", "25580", "25588", "25590", "25598", "27160", "27168", "27180", "27188", "27190", "27198", "27260", "27268", "27280", "27288", "27290", "27298", "27360", "27368", "27380", "27388", "27390", "27398", "27560", "27568", "27580", "27588", "27590", "27598", "41160", "41168", "41180", "41188", "41190", "41198", "41260", "41268", "41280", "41288", "41290", "41298", "41360", "41368", "41380", "41388", "41390", "41398", "41560", "41568", "41580", "41588", "41590", "41598", "44160", "44168", "44180", "44188", "44190", "44198", "44260", "44268", "44280", "44288", "44290", "44298", "44360", "44368", "44380", "44388", "44390", "44398", "44560", "44568", "44580", "44588", "44590", "44598", "45160", "45168", "45180", "45188", "45190", "45198", "45260", "45268", "45280", "45288", "45290", "45298", "45360", "45368", "45380", "45388", "45390", "45398", "45560", "45568", "45580", "45588", "45590", "45598", "47160", "47168", "47180", "47188", "47190", "47198", "47260", "47268", "47280", "47288", "47290", "47298", "47360", "47368", "47380", "47388", "47390", "47398", "47560", "47568", "47580", "47588", "47590", "47598"],
