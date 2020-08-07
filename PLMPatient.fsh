Profile:      PLMPatient
Parent:       Patient
Id:           plm-patient
Title:        "PLM Patient"
Description:  "Profile of Patient resource for PLM."
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = #use
* name ^slicing.rules = #open
* name ^slicing.ordered = false
* name ^slicing.description = "Slicing based on name.use pattern"
* name contains officialName 1..1
* name[officialName].use = #official
* name[officialName].given 1..*
* name[officialName].family 1..1
* birthDate 1..1
* gender 1..1
* telecom 1..*

Instance:       plm-patient-example1
InstanceOf:     PLMPatient
Title:          "PLM Patient Example 1"
Usage:          #example
* name[officialName].family = "Rumble"
* name[officialName].given[0] = "Merimas"
* birthDate = "1964-11-19"
* gender = #male
* telecom[0].use = #work
* telecom[0].system = #phone
* telecom[0].value = "555-555-1212"


Instance:       PLMPatientQuestionnaire
InstanceOf:     Questionnaire
Usage:          #definition
* title = "PLM Patient Questionnaire"
* description = "PLM Patient minimum data questionnaire."
* id = "plm-patient"
* name = "plm-patient"
* status = #active
* date = 2020-08-06
* purpose = "Questionnaire for minimum data set for PLM Patients."

* item[0].linkId = "Patient"
* item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient"
* item[0].text = "Patient|Primary demographic details"
* item[0].type = #group

* item[0].item[0].linkId = "Patient.name[0]"
* item[0].item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Practitioner.name"
* item[0].item[0].text = "Name"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Practitioner.name[0].use"
* item[0].item[0].item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Practitioner.name.use"
* item[0].item[0].item[0].text = "Name Usage"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false
* item[0].item[0].item[0].readOnly = true
* item[0].item[0].item[0].answerOption.valueCoding = http://hl7.org/fhir/name-use#official
* item[0].item[0].item[0].answerOption.initialSelected = true

* item[0].item[0].item[1].linkId = "Practitioner.name[0].family"
* item[0].item[0].item[1].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Practitioner.name.family"
* item[0].item[0].item[1].text = "Family Name"
* item[0].item[0].item[1].type = #string
* item[0].item[0].item[1].required = true
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Practitioner.name[0].given[0]"
* item[0].item[0].item[2].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Practitioner.name.given"
* item[0].item[0].item[2].text = "Given Name(s)"
* item[0].item[0].item[2].type = #string
* item[0].item[0].item[2].required = true
* item[0].item[0].item[2].repeats = true

* item[0].item[1].linkId = "Practitioner.birthDate"
* item[0].item[1].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Practitioner.birthDate"
* item[0].item[1].text = "Date of Birth"
* item[0].item[1].type = #date
* item[0].item[1].required = false
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Practitioner.gender"
* item[0].item[2].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Practitioner.gender"
* item[0].item[2].text = "Gender"
* item[0].item[2].type = #choice
* item[0].item[2].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[0].item[2].required = false
* item[0].item[2].repeats = false
