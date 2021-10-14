DROP DATABASE IF EXISTS ejercicitacion_MFZ_db;
CREATE DATABASE ejercicitacion_MFZ_db;
USE ejercicitacion_MFZ_db;

/* Creación y relleno de tabla Usuarios */  
CREATE TABLE users (
  id INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (id, first_name, last_name, email)
VALUES (default, 'Pietro', 'Marinni', 'pepe_marinni@gmail.com'),
(default, 'Mary', 'Walsh', 'walshmary001@yahoo.com'),
(default, 'Amie', 'Robertson', 'a_robertson@gmail.com'),
(default, 'Faridah', 'Ahmad', 'phdahmad@jama.com'),
(default, 'Simmon', 'Polley', 'simmonpolleyphd@jama.com'),
(default, 'Jaqueline', 'Du Pre', 'jaqueline_72@hotmail.com');

/* Creación y relleno de tabla Notas */  
CREATE TABLE notes (
  id INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
  title VARCHAR(100) NOT NULL,
  created_date DATE NOT NULL,
  modified_date DATE NULL,
  note TEXT NOT NULL,
  erasable TINYINT NOT NULL,
  user_id INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO notes (id, title, created_date, modified_date, note, erasable, user_id)
VALUES 
(default, 
'Ischaemic heart disease',
'2015/02/08',
'2021/01/14',
'Heart disease is the leading cause of death for both men and women. Medical professionals use the term heart disease to describe several conditions. Many of these conditions relate to the buildup of plaque in the walls of the arteries. As the plaque develops, the arteries narrow. This makes it difficult for blood to flow around the body and increases the risk of heart attack or stroke. It can also give rise to angina, arrythmias, and heart failure. To reduce the risk of dying from heart disease, a person can protect their heart health by adopting a healthful diet and getting regular exercise. Being able to recognize the symptoms of a heart attack can also help people get prompt medical treatment and potentially save their lives.',
1,
4),
(default, 
'Cancer',
'2015/02/14',
'2021/01/14',
'Cancer occurs when cells do not die at the normal point in their life cycle. If a person’s body cannot control the spread of these cells, they can interfere with essential, life-sustaining systems and possibly lead to death. Everyone has some degree of risk, but for most cancers, the risk will increase with age. Some people have a higher or lower risk due to differences in exposure to carcinogens, such as from smoking or exposure to chemical pollutants. Genetic factors also play a strong role in cancer’s development. Race and sex also play a role in a person’s risk of developing cancer, depending on the type. That said, lung cancer causes more deaths than any other cancer in both men and women. However, researchers are always taking steps to advance cancer treatment. In fact, the death rate from all cancers in the U.S. has dropped by 26% since 1991.',
0,
1),
(default, 
'COVID-19',
'2021/01/14',
NULL,
'COVID-19 was the third leading cause of death in 2020, with an estimated 345,323 deaths, and was largely responsible for the substantial increase in total deaths from 2019 to 2020.',
0,
3),
(default, 
'Unintentional injuries',
'2015/01/05',
'2021/01/12',
'Accidents, or unintentional injuries, are the 4th leading cause of death in the U.S. overall, and the leading cause of death for those aged 1–44. Accidents are unintentional and usually unavoidable. However, there are many ways to reduce the risk of accidental injury and death. Some key components of accident prevention include focusing on road and workplace safety, such as using a seatbelt and never driving or operating heavy machinery while under the influence of alcohol or drugs.',
1,
2),
(default, 
'Stroke and cerebrovascular diseases',
'2015/01/22',
'2021/01/16',
'Cerebrovascular diseases develop due to problems with the blood vessels that supply the brain. Four of the most common cerebrovascular diseases are: stroke, transient ischemic attack (or mini stroke), subarachnoid hemorrhage and vascular dementia. Every year, more than 795,000 people in the U.S. have a stroke. The risk of stroke varies with race, ethnicity, and age.',
1,
4),
(default, 
'Chronic lower respiratory disease',
'2015/02/02',
'2021/01/09',
'Chronic lower respiratory disease refers to a group of lung conditions that block the airflow and cause breathing-related issues. These diseases include: chronic obstructive pulmonary disease (COPD), bronchitis, emphysema and asthma. Smoking drastically increases a person’s risk of developing these conditions.',
1,
3),
(default, 
'Alzheimer’s disease',
'2015/02/11',
'2021/01/10',
'Dementia refers to a group of conditions that cause a decline in cognitive function. This affects a person’s ability to perform everyday activities. Damage to the nerve cells in the brain causes dementia. As a result of the damage, neurons can no longer function normally and may die. This, in turn, can lead to changes in memory, behavior, and the ability to think clearly. Alzheimer’s disease is just one type of dementia. Another type, called vascular dementia, can cause similar symptoms but instead results from changes to blood flow to the brain. For people with Alzheimer’s disease, neuron damage and death eventually impair their ability to perform essential actions, such as walking and swallowing. People in the final stages of this condition may not be able to leave their bed and may require around the clock care. Alzheimer’s is ultimately fatal. In the U.S., an estimated 5.8 million people currently have Alzheimer’s disease. Alzheimer’s is the only cause of death in the top 10 that medical experts cannot cure, prevent, or slow down.',
0,
5),
(default, 
'Diabetes',
'2015/02/16',
'2021/01/15',
'Diabetes is a condition wherein the body can no longer control blood glucose, which leads to dangerously high levels of blood glucose. This is called hyperglycemia. Persistent hyperglycemia can damage the body’s tissues, including those in the nerves, blood vessels, and eyes. The body converts most of the food people eat into glucose, a simple sugar, which it can then use for energy. The pancreas, an organ near the stomach, makes a hormone called insulin to move glucose from the bloodstream into the cells. There are two main types of diabetes: type 1 diabetes and type 2 diabetes. The bodies of people with type 1 diabetes do not produce insulin at all, so these people need to supplement their supply. The bodies of people with type 2 diabetes cannot use insulin effectively. However, it is possible to control the risk of type 2 diabetes with careful dietary management and regular exercise. Diabetes can cause serious health complications, including heart disease, blindness, kidney failure, and the need for amputation of the lower extremities.',
1,
6),
(default, 
'Influenza and pneumonia',
'2015/01/21',
'2021/01/14',
'Influenza, or flu, is a highly contagious viral infection. It is one of the most severe illnesses of the winter season. Flu spreads easily from person to person, usually when someone who carries the virus coughs or sneezes. A person can have the flu more than once, as many different strains of the virus can cause infection. They may belong to one of three different influenza families: A, B or C. Type A viruses tend to affect adults more severely, while type B viruses most often cause health problems in children. Type C viruses are fairly uncommon. Pneumonia, a serious condition that causes inflammation of the lungs, can cause complications in people who have the flu. Pneumonia causes the air sacs in the lungs to fill with pus and other fluids, preventing oxygen from reaching the bloodstream. If there is too little oxygen in the blood, the body’s cells cannot function. This can be fatal.',
1,
3),
(default, 
'Suicide',
'2016/01/10',
'2021/01/12',
'When a person dies by suicide, they may have lived with a mental health condition — such as depression, anxiety, or bipolar disorder — for a long time. However, not all people who attempt suicide or die by it have these conditions. Suicide is the second-leading cause of death among people aged 10-34 years. Establishing a strong support network, taking appropriate medications, and seeking therapy may help reduce the risk of suicide.',
1,
2);

/* Creación y relleno de tabla Categorias */  
CREATE TABLE categories (
    id INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    category VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO categories (id, category)
VALUES 
(default, 'Cardiology'),
(default, 'Pneumology'),
(default, 'Traumatology'),
(default, 'Endocrinology'),
(default, 'Neurology'),
(default, 'Psychiatry'),
(default, 'Oncology'),
(default, 'Infectiology');

/* Creación y relleno de tabla intermedia Notas y Categorías*/  
CREATE TABLE notes_categories (
    id INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    note_id INT(10) UNSIGNED NOT NULL,
    category_id INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (note_id) REFERENCES notes (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO notes_categories (id, note_id, category_id)
VALUES 
(default, 1, 1),
(default, 2, 7),
(default, 2, 2),
(default, 3, 2),
(default, 3, 8),
(default, 3, 1),
(default, 3, 5),
(default, 4, 3),
(default, 4, 6),
(default, 5, 1),
(default, 5, 5),
(default, 5, 6),
(default, 6, 2),
(default, 7, 5),
(default, 7, 6),
(default, 8, 4),
(default, 8, 1),
(default, 8, 8),
(default, 8, 5),
(default, 9, 2),
(default, 9, 8),
(default, 10, 6);