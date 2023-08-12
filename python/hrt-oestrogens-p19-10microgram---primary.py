# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"10052","system":"gprdproduct"},{"code":"10076","system":"gprdproduct"},{"code":"10096","system":"gprdproduct"},{"code":"10126","system":"gprdproduct"},{"code":"10180","system":"gprdproduct"},{"code":"11375","system":"gprdproduct"},{"code":"11430","system":"gprdproduct"},{"code":"11672","system":"gprdproduct"},{"code":"11882","system":"gprdproduct"},{"code":"12773","system":"gprdproduct"},{"code":"12788","system":"gprdproduct"},{"code":"12970","system":"gprdproduct"},{"code":"14792","system":"gprdproduct"},{"code":"1488","system":"gprdproduct"},{"code":"1489","system":"gprdproduct"},{"code":"14950","system":"gprdproduct"},{"code":"15298","system":"gprdproduct"},{"code":"15328","system":"gprdproduct"},{"code":"16437","system":"gprdproduct"},{"code":"18009","system":"gprdproduct"},{"code":"18218","system":"gprdproduct"},{"code":"18311","system":"gprdproduct"},{"code":"18383","system":"gprdproduct"},{"code":"18437","system":"gprdproduct"},{"code":"18502","system":"gprdproduct"},{"code":"18600","system":"gprdproduct"},{"code":"18901","system":"gprdproduct"},{"code":"19145","system":"gprdproduct"},{"code":"19429","system":"gprdproduct"},{"code":"19974","system":"gprdproduct"},{"code":"20135","system":"gprdproduct"},{"code":"20155","system":"gprdproduct"},{"code":"2141","system":"gprdproduct"},{"code":"22335","system":"gprdproduct"},{"code":"22372","system":"gprdproduct"},{"code":"22741","system":"gprdproduct"},{"code":"23152","system":"gprdproduct"},{"code":"2397","system":"gprdproduct"},{"code":"2402","system":"gprdproduct"},{"code":"24917","system":"gprdproduct"},{"code":"26049","system":"gprdproduct"},{"code":"32930","system":"gprdproduct"},{"code":"35718","system":"gprdproduct"},{"code":"35742","system":"gprdproduct"},{"code":"37033","system":"gprdproduct"},{"code":"37037","system":"gprdproduct"},{"code":"37692","system":"gprdproduct"},{"code":"37697","system":"gprdproduct"},{"code":"40606","system":"gprdproduct"},{"code":"40836","system":"gprdproduct"},{"code":"42515","system":"gprdproduct"},{"code":"44494","system":"gprdproduct"},{"code":"4466","system":"gprdproduct"},{"code":"4467","system":"gprdproduct"},{"code":"4721","system":"gprdproduct"},{"code":"49693","system":"gprdproduct"},{"code":"5005","system":"gprdproduct"},{"code":"5100","system":"gprdproduct"},{"code":"51201","system":"gprdproduct"},{"code":"52174","system":"gprdproduct"},{"code":"52632","system":"gprdproduct"},{"code":"5343","system":"gprdproduct"},{"code":"54456","system":"gprdproduct"},{"code":"55551","system":"gprdproduct"},{"code":"5759","system":"gprdproduct"},{"code":"6059","system":"gprdproduct"},{"code":"6563","system":"gprdproduct"},{"code":"6601","system":"gprdproduct"},{"code":"6793","system":"gprdproduct"},{"code":"9224","system":"gprdproduct"},{"code":"9235","system":"gprdproduct"},{"code":"9268","system":"gprdproduct"},{"code":"9901","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('hrt-oestrogens-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hrt-oestrogens-p19-10microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hrt-oestrogens-p19-10microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hrt-oestrogens-p19-10microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
