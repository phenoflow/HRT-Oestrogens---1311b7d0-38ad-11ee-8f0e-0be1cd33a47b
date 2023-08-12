cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hrt-oestrogens-p19-10microgram---primary:
    run: hrt-oestrogens-p19-10microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  hrt-oestrogens-p19-menorest---primary:
    run: hrt-oestrogens-p19-menorest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-10microgram---primary/output
  hrt-oestrogens-p19-375microgram---primary:
    run: hrt-oestrogens-p19-375microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-menorest---primary/output
  hrt-oestrogens-p19-estradiol---primary:
    run: hrt-oestrogens-p19-estradiol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-375microgram---primary/output
  hrt-oestrogens-p19-femtab---primary:
    run: hrt-oestrogens-p19-femtab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-estradiol---primary/output
  hrt-oestrogens-p19-prempak---primary:
    run: hrt-oestrogens-p19-prempak---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-femtab---primary/output
  hrt-oestrogens-p19-valerate---primary:
    run: hrt-oestrogens-p19-valerate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-prempak---primary/output
  hrt-oestrogens-p19-patch---primary:
    run: hrt-oestrogens-p19-patch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-valerate---primary/output
  hrt-oestrogens-p19-acetate---primary:
    run: hrt-oestrogens-p19-acetate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-patch---primary/output
  hrt-oestrogens-p19-tablet---primary:
    run: hrt-oestrogens-p19-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-acetate---primary/output
  hrt-oestrogens-p19-norethisterone---primary:
    run: hrt-oestrogens-p19-norethisterone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-tablet---primary/output
  hrt-oestrogens-p19-015mg---primary:
    run: hrt-oestrogens-p19-015mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-norethisterone---primary/output
  hrt-oestrogens-p19-0625mg---primary:
    run: hrt-oestrogens-p19-0625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-015mg---primary/output
  weekly-hrt-oestrogens-p19---primary:
    run: weekly-hrt-oestrogens-p19---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-0625mg---primary/output
  hrt-oestrogens-p19-dermestril---primary:
    run: hrt-oestrogens-p19-dermestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: weekly-hrt-oestrogens-p19---primary/output
  hrt-oestrogens-p19-septem---primary:
    run: hrt-oestrogens-p19-septem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-dermestril---primary/output
  continuous-hrt-oestrogens-p19---primary:
    run: continuous-hrt-oestrogens-p19---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-septem---primary/output
  vaginal-hrt-oestrogens-p19---primary:
    run: vaginal-hrt-oestrogens-p19---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: continuous-hrt-oestrogens-p19---primary/output
  hrt-oestrogens-p19-oestrogel---primary:
    run: hrt-oestrogens-p19-oestrogel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: vaginal-hrt-oestrogens-p19---primary/output
  hrt-oestrogens-p19-climaval---primary:
    run: hrt-oestrogens-p19-climaval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-oestrogel---primary/output
  hrt-oestrogens-p19-implant---primary:
    run: hrt-oestrogens-p19-implant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-climaval---primary/output
  hrt-oestrogens-p19-hormonin---primary:
    run: hrt-oestrogens-p19-hormonin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-implant---primary/output
  hrt-oestrogens-p19-estraderm---primary:
    run: hrt-oestrogens-p19-estraderm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-hormonin---primary/output
  hrt-oestrogens-p19-dienestrol---primary:
    run: hrt-oestrogens-p19-dienestrol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-estraderm---primary/output
  hrt-oestrogens-p19-climagest---primary:
    run: hrt-oestrogens-p19-climagest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-dienestrol---primary/output
  hrt-oestrogens-p19-femseven---primary:
    run: hrt-oestrogens-p19-femseven---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-climagest---primary/output
  livial-hrt-oestrogens-p19---primary:
    run: livial-hrt-oestrogens-p19---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-femseven---primary/output
  hrt-oestrogens-p19-cream---primary:
    run: hrt-oestrogens-p19-cream---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: livial-hrt-oestrogens-p19---primary/output
  hrt-oestrogens-p19-injection---primary:
    run: hrt-oestrogens-p19-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-cream---primary/output
  hrt-oestrogens-p19-elleste---primary:
    run: hrt-oestrogens-p19-elleste---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-injection---primary/output
  hrt-oestrogens-p19-progynova---primary:
    run: hrt-oestrogens-p19-progynova---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-elleste---primary/output
  hrt-oestrogens-p19-femapak---primary:
    run: hrt-oestrogens-p19-femapak---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-progynova---primary/output
  hrt-oestrogens-p19-conjugat---primary:
    run: hrt-oestrogens-p19-conjugat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-femapak---primary/output
  hrt-oestrogens-p19-sandrena---primary:
    run: hrt-oestrogens-p19-sandrena---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-conjugat---primary/output
  hrt-oestrogens-p19-pumppack---primary:
    run: hrt-oestrogens-p19-pumppack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-sandrena---primary/output
  hrt-oestrogens-p19-premarin---primary:
    run: hrt-oestrogens-p19-premarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-pumppack---primary/output
  hrt-oestrogens-p19-femostonconti---primary:
    run: hrt-oestrogens-p19-femostonconti---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-premarin---primary/output
  hrt-oestrogens-p19-evorel---primary:
    run: hrt-oestrogens-p19-evorel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-femostonconti---primary/output
  hrt-oestrogens-p19-sachet---primary:
    run: hrt-oestrogens-p19-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-evorel---primary/output
  hrt-oestrogens-p19-sequi---primary:
    run: hrt-oestrogens-p19-sequi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-sachet---primary/output
  hrt-oestrogens-p19-pessary---primary:
    run: hrt-oestrogens-p19-pessary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-sequi---primary/output
  hrt-oestrogens-p19-nuvelle---primary:
    run: hrt-oestrogens-p19-nuvelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-pessary---primary/output
  hrt-oestrogens-p19-fematrix---primary:
    run: hrt-oestrogens-p19-fematrix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-nuvelle---primary/output
  generic-hrt-oestrogens-p19---primary:
    run: generic-hrt-oestrogens-p19---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-fematrix---primary/output
  hrt-oestrogens-p19-estriol---primary:
    run: hrt-oestrogens-p19-estriol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: generic-hrt-oestrogens-p19---primary/output
  hrt-oestrogens-p19-zumenon---primary:
    run: hrt-oestrogens-p19-zumenon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-estriol---primary/output
  hrt-oestrogens-p19-indivina---primary:
    run: hrt-oestrogens-p19-indivina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-zumenon---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: hrt-oestrogens-p19-indivina---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
