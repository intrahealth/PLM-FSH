Profile:      PLMPatient
Parent:       Patient
Id:           plm-patient
Title:        "PLM Patient"
Description:  "Profile of Patient resource for PLM."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = #system
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slicing based on identifier.system value"
* identifier contains sourceIdentifier 1..1 MS
* identifier[sourceIdentifier].use = #official
* identifier[sourceIdentifier].system 1..1 MS
* identifier[sourceIdentifier].value 1..1 MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = #use
* name ^slicing.rules = #open
* name ^slicing.ordered = false
* name ^slicing.description = "Slicing based on name.use value"
* name contains officialName 1..1 MS
* name[officialName].use = #official
* name[officialName].given 1..* MS
* name[officialName].family 1..1 MS
* birthDate 1..1 MS
* gender 1..1 MS
* telecom 1..* MS
* address 0..* MS
* address.use 1..1 MS
* address.text 1..1 MS

Instance:       plm-patient-example1
InstanceOf:     PLMPatient
Title:          "PLM Patient Example 1"
Usage:          #example
* identifier[sourceIdentifier].use = #official
* identifier[sourceIdentifier].system = "http://datim.org/ID/Source1"
* identifier[sourceIdentifier].value = "aBcD1234"
* name[officialName].use = #official
* name[officialName].family = "Rumble"
* name[officialName].given[0] = "Merimas"
* birthDate = "1964-11-19"
* gender = #male
* telecom[0].use = #work
* telecom[0].system = #phone
* telecom[0].value = "555-555-1212"
* address[0].use = #home
* address[0].text = "123 Test Dr.\nTestville"


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
* item[0].item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name"
* item[0].item[0].text = "Name"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Patient.name[0].use"
* item[0].item[0].item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.use"
* item[0].item[0].item[0].text = "Name Usage"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false
* item[0].item[0].item[0].readOnly = true
* item[0].item[0].item[0].answerOption.valueCoding = http://hl7.org/fhir/name-use#official
* item[0].item[0].item[0].answerOption.initialSelected = true

* item[0].item[0].item[1].linkId = "Patient.name[0].family"
* item[0].item[0].item[1].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.family"
* item[0].item[0].item[1].text = "Family Name"
* item[0].item[0].item[1].type = #string
* item[0].item[0].item[1].required = true
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Patient.name[0].given[0]"
* item[0].item[0].item[2].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.given"
* item[0].item[0].item[2].text = "Given Name(s)"
* item[0].item[0].item[2].type = #string
* item[0].item[0].item[2].required = true
* item[0].item[0].item[2].repeats = true

* item[0].item[1].linkId = "Patient.birthDate"
* item[0].item[1].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.birthDate"
* item[0].item[1].text = "Date of Birth"
* item[0].item[1].type = #date
* item[0].item[1].required = false
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Patient.gender"
* item[0].item[2].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.gender"
* item[0].item[2].text = "Gender"
* item[0].item[2].type = #choice
* item[0].item[2].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[0].item[2].required = false
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "Patient.address[0]"
* item[0].item[3].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address"
* item[0].item[3].text = "Address"
* item[0].item[3].type = #group

* item[0].item[3].item[0].linkId = "Patient.address[0].use"
* item[0].item[3].item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.use"
* item[0].item[3].item[0].text = "Address Usage"
* item[0].item[3].item[0].type = #choice
* item[0].item[3].item[0].answerValueSet = "http://hl7.org/fhir/ValueSet/address-use"
* item[0].item[3].item[0].required = false
* item[0].item[3].item[0].repeats = false

* item[0].item[3].item[1].linkId = "Patient.address[0].text"
* item[0].item[3].item[1].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.text"
* item[0].item[3].item[1].text = "Address"
* item[0].item[3].item[1].type = #string
* item[0].item[3].item[1].required = false
* item[0].item[3].item[1].repeats = false

* item[0].item[4].linkId = "Patient.identifier[0]"
* item[0].item[4].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.identifier"
* item[0].item[4].text = "Source Identifier"
* item[0].item[4].type = #group

* item[0].item[4].item[0].linkId = "Patient.identifier[0].system"
* item[0].item[4].item[0].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.identifier.system"
* item[0].item[4].item[0].text = "Source System"
* item[0].item[4].item[0].type = #string
* item[0].item[4].item[0].required = true
* item[0].item[4].item[0].repeats = false

* item[0].item[4].item[1].linkId = "Patient.identifier[0].value"
* item[0].item[4].item[1].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.identifier.value"
* item[0].item[4].item[1].text = "Source ID"
* item[0].item[4].item[1].type = #string
* item[0].item[4].item[1].required = true
* item[0].item[4].item[1].repeats = false

