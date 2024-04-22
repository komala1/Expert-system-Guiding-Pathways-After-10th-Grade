% Define courses after 10th grade with detailed information
course(commerce, 'Commerce stream',
    ['Accountancy', 'Business Studies', 'Economics', 'Mathematics'],
    ['Finance', 'Accounting', 'Banking', 'Business Management'],
    'Commerce stream focuses on the study of trade and business activities. It equips students with knowledge and skills in finance, accounting, and business management. Commerce graduates have diverse career opportunities in finance, banking, and business sectors.').

course(science, 'Science stream',
    ['Physics', 'Chemistry', 'Mathematics', 'Biology', 'Computer Science'],
    ['Engineering', 'Medicine', 'Research', 'Biotechnology', 'Computer Science'],
    'Science stream emphasizes scientific principles and analytical skills. It prepares students for careers in engineering, medicine, research, and technology. Science graduates have opportunities in various fields, including healthcare, biotechnology, and information technology.').

course(arts, 'Arts stream',
    ['History', 'Geography', 'Political Science', 'Sociology', 'Psychology', 'Literature'],
    ['Journalism', 'Teaching', 'Civil Services', 'Social Work', 'Literature'],
    'Arts stream encompasses a wide range of subjects related to humanities and social sciences. It fosters critical thinking and communication skills. Arts graduates pursue careers in journalism, education, civil services, social work, and literature.').

course(vocational, 'Vocational courses',
    ['Information Technology', 'Healthcare', 'Hospitality', 'Automobile'],
    ['Practical Skills', 'Immediate Employment Preparation'],
    'Vocational courses provide specialized training in specific industries. They focus on practical skills development and prepare students for immediate employment. Vocational graduates have opportunities in IT, healthcare, hospitality, and automotive sectors.').

course(nda_airforce, 'NDA and Air Force Preparation',
    ['Mathematics', 'Physics', 'General Knowledge', 'English'],
    ['Indian Air Force', 'National Defence Academy', 'Indian Armed Forces'],
    'NDA and Air Force Preparation course is designed to prepare students for the National Defence Academy (NDA) entrance exam and careers in the Indian Air Force and other branches of the Indian Armed Forces. It covers subjects such as Mathematics, Physics, General Knowledge, and English, along with rigorous physical training and leadership development.').

course(fine_arts, 'Fine Arts',
    ['Drawing', 'Painting', 'Sculpture', 'Art History'],
    ['Artist', 'Art Teacher', 'Art Therapist', 'Art Curator'],
    'Fine Arts course focuses on creative expression through various mediums such as drawing, painting, and sculpture. It explores art history and theory while nurturing individual artistic talent. Fine Arts graduates pursue careers as artists, art teachers, art therapists, and art curators.').

course(defence, 'Defence Studies',
    ['Military History', 'Strategic Studies', 'National Security', 'Geopolitics'],
    ['Military Officer', 'Defence Analyst', 'Security Consultant', 'Policy Advisor'],
    'Defence Studies course delves into military history, strategic studies, national security, and geopolitics. It prepares students for careers in the military, defence analysis, security consulting, and policy advising. Defence Studies graduates contribute to national security and defence policy formulation.').

% Greeting message
greet :-
    write('****************************************************************************************'), nl,
    write('*                                  Course Recommendation System                          *'), nl,
    write('****************************************************************************************'), nl,
    write('Welcome to the Course Recommendation System!'), nl,
    write('I can assist you in exploring various courses after completing 10th grade.'), nl,
    write('Please provide your qualifications to get started.'), nl,
    write('****************************************************************************************'), nl.

% Provide detailed information about a course
course_details(Name, Stream, Subjects, CareerOpportunities, Overview) :-
    write('****************************************************************************************'), nl,
    write('Details about '), write(Stream), write(':'), nl,
    write('****************************************************************************************'), nl,
    write('Overview: '), write(Overview), nl,
    write('Subjects: '), write_list(Subjects), nl,
    write('Career Opportunities: '), write_list(CareerOpportunities), nl,
    write('****************************************************************************************'), nl.

% Main predicate for recommending courses
recommend_course(After10th, Course) :-
    greet,
    write('****************************************************************************************'), nl,
    write('Based on your qualifications after 10th grade, you may consider the following course:'), nl,
    write('****************************************************************************************'), nl,
    course(Course, Stream, Subjects, CareerOpportunities, Overview),
    write(Stream), write('.'), nl,
    course_details(Course, Stream, Subjects, CareerOpportunities, Overview),
    write('****************************************************************************************'), nl,
    !. % Cut operator to stop searching after finding a recommendation

% Predicate to write a list
write_list([]).
write_list([H|T]) :-
    write(H), write(', '),
    write_list(T).

% Example query:
% recommend_course(10th, nda_airforce).
