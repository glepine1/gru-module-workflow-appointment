INSERT INTO workflow_workflow VALUES (101,'Workflow de gestion des rendez-vous','Workflow de gestion des rendez-vous','2014-02-11 08:36:34',1,'all');

INSERT INTO workflow_state VALUES (101,'Non validé','Non validé',101,1,0,NULL,1);
INSERT INTO workflow_state VALUES (102,'Validé','Validé',101,0,0,NULL,2);
INSERT INTO workflow_state VALUES (103,'Annulé','Annulé',101,0,0,NULL,3);

INSERT INTO workflow_action VALUES (101,'Valider','Valider',101,101,102,1,0,0,1,0);
INSERT INTO workflow_action VALUES (102,'Annuler par un administrateur','Annuler par un administrateur',101,102,103,2,0,0,2,0);
INSERT INTO workflow_action VALUES (103,'Annuler par l\'utilisateur','Annuler par l\'utilisateur',101,101,103,2,0,0,3,0);
INSERT INTO workflow_action VALUES (104,'Action d\'arrivé sur l\'etat Non validé','',101,101,101,1,0,0,0,1);
INSERT INTO workflow_action VALUES (105,'Annuler par un administrateur','Annuler par un administrateur',101,101,103,2,0,0,4,0);
INSERT INTO workflow_action VALUES (106,'Annuler par l\'utilisateur','Annuler par l\'utilisateur',101,102,103,2,0,0,5,0);
INSERT INTO workflow_action VALUES (107,'Associer à un administrateur','Associer à un administrateur',101,102,102,3,0,0,6,0);


INSERT INTO workflow_task VALUES (101,'taskNotifyAppointment',101,3);
INSERT INTO workflow_task VALUES (103,'taskNotifyAppointment',104,1);
INSERT INTO workflow_task VALUES (104,'taskNotifyAdminAppointment',104,2);
INSERT INTO workflow_task VALUES (105,'taskUpdateAppointmentCancelAction',101,5);
INSERT INTO workflow_task VALUES (106,'taskChangeAppointmentStatus',101,2);
INSERT INTO workflow_task VALUES (107,'taskChangeAppointmentStatus',102,2);
INSERT INTO workflow_task VALUES (108,'taskManualAppointmentNotification',102,4);
INSERT INTO workflow_task VALUES (109,'taskChangeAppointmentStatus',103,1);
INSERT INTO workflow_task VALUES (110,'taskNotifyAppointment',103,2);
INSERT INTO workflow_task VALUES (111,'taskChangeAppointmentStatus',105,2);
INSERT INTO workflow_task VALUES (112,'taskNotifyAppointment',105,3);
INSERT INTO workflow_task VALUES (113,'taskTypeComment',105,1);
INSERT INTO workflow_task VALUES (114,'taskTypeComment',102,1);
INSERT INTO workflow_task VALUES (115,'taskChangeAppointmentStatus',106,1);
INSERT INTO workflow_task VALUES (116,'taskNotifyAdminAppointment',106,2);
INSERT INTO workflow_task VALUES (117,'taskUpdateAdminAppointment',107,2);
INSERT INTO workflow_task VALUES (118,'taskNotifyAdminAppointment',102,3);
INSERT INTO workflow_task VALUES (119,'taskUpdateAdminAppointment',101,1);
INSERT INTO workflow_task VALUES (120,'taskNotifyAdminAppointment',101,4);
INSERT INTO workflow_task VALUES (121,'taskNotifyAppointment',106,3);
INSERT INTO workflow_task VALUES (122,'taskNotifyAdminAppointment',105,4);
INSERT INTO workflow_task VALUES (123,'taskNotifyAdminAppointment',107,1);
INSERT INTO workflow_task VALUES (124,'taskNotifyAdminAppointment',107,3);

INSERT INTO workflow_task_change_appointment_status_cf VALUES (106,10);
INSERT INTO workflow_task_change_appointment_status_cf VALUES (107,-10);
INSERT INTO workflow_task_change_appointment_status_cf VALUES (109,-10);
INSERT INTO workflow_task_change_appointment_status_cf VALUES (111,-10);
INSERT INTO workflow_task_change_appointment_status_cf VALUES (115,-10);

INSERT INTO workflow_task_comment_config(id_task, title, is_mandatory, is_richtext) VALUES (113,'Veuillez saisir le motif de l\'annulation',1,0);
INSERT INTO workflow_task_comment_config(id_task, title, is_mandatory, is_richtext) VALUES (114,'Veuillez saisir le motif de l\'annulation',1,0);

INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (104,1,'L\'équipe Lutèce','no-reply@mydomain.com','Une demande de rendez-vous a été créée pour le ${date_appointment} à ${time_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>un nouveau rendez-vous a &eacute;t&eacute; cr&eacute;&eacute; le ${date_appointment} &agrave; ${time_appointment}.</p>\r\n<p>Les informations soumises par l\'utilisateur sont les suivantes :</p>\r\n<p>${recap}</p>\r\n<p>Merci de bien vouloir valider ou annuler ce rendez vous :</p>\r\n<p><a title=\"Valider le rendez-vous\" href=\"${url_validate}\">Valider le rendez-vous</a></p>\r\n<p><a title=\"Annuler le rendez-vous\" href=\"${url_cancel}\">Annuler le rendez-vous</a></p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce</p>','','',105,101,0,0,'Salle 216');
INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (116,1,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation d\'un rendez-vous par l\'utilisateur','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>${firstName} ${lastName} a annul&eacute; le rendez-vous du ${date_appointment} &agrave; ${time_appointment}.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',0,0,1,0,'');
INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (118,0,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation du rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>je rendez-vous du ${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce.</p>','','',0,0,1,0,'Salle 216');
INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (120,0,'L\'équipe Lutèce','no-reply@mydomain.com','Une demande de rendez-vous vous a été attribuée pour le ${date_appointment} à ${time_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>Le rendez-vous du ${date_appointment} &agrave; ${time_appointment} vous a &eacute;t&eacute; attribu&eacute;. Merci de vous rendez disponible pour cet horraire, ou d\'annuler le rendez-vous en cas d\'impossibilit&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',102,0,1,1,'Salle 25');
INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (122,0,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation de votre rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>le rendez-vous du&nbsp;${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; annul&eacute; par le gestionnaire.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce.</p>','','',0,0,1,0,'');
INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (123,0,'L\'équipe Lutèce','no-reply@mydomain.com','Le rendez-vous du ${date_appointment} à ${time_appointment} a été réattribué','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>le rendez-vous du ${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; r&eacute;attribu&eacute; &agrave; un autre agent.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',0,0,1,0,'');
INSERT INTO workflow_task_notify_admin_appointment_cf VALUES (124,0,'L\'équipe Lutèce','no-reply@mydomain.com','Le rendez-vous du ${date_appointment} à ${time_appointment} vous a été attribué','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>le rendez-vous du ${date_appointment} &agrave; ${time_appointment} vous a &eacute;t&eacute; attribu&eacute;. Merci de vous rendre disponible pour cet horraire.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',102,0,1,1,'salle 216');

INSERT INTO workflow_task_notify_appointment_cf VALUES (101,'L\'équipe Lutèce','no-reply@mydomain.com','Votre rendez-vous du ${date_appointment} a été validé','<p>Bonjour ${firstName} ${lastName},</p>\r\n<p>&nbsp;</p>\r\n<p>votre demande de rendez-vous du ${date_appointment} &agrave; ${time_appointment} avec la reference <strong>${reference}</strong> a &eacute;t&eacute; valid&eacute;.</p>\r\n<p>En cas d\'indisponibilit&eacute;, vous pouvez annuler le rendez-vous en suivante le lien suivant :</p>\r\n<p><a title=\"Annuler le rendez-vous\" href=\"${url_cancel}\">Annuler le rendez-vous</a></p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',106,1,1,'La bas',0);
INSERT INTO workflow_task_notify_appointment_cf VALUES (103,'L\'équipe Lutèce','no-reply@mydomain.com','Votre demande de rendez-vous du ${date_appointment}','<p>Bonjour ${firstName} ${lastName},</p>\r\n<p>&nbsp;</p>\r\n<p>votre demande de rendez-vous du ${date_appointment} &agrave; ${time_appointment} a bien &eacute;t&eacute; enregistr&eacute;e avec la r&eacute;f&eacute;rence <strong>${reference}</strong>. Le rendez-vous sera valid&eacute; par un de nos agents le plus rapidement possible.</p>\r\n<p>En cas d\'indisponibilit&eacute;, vous pouvez annuler le rendez-vous en suivant le lien suivant :</p>\r\n<p><a title=\"Annuler le rendez-vous\" href=\"${url_cancel}\">Annuler le rendez-vous</a></p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',103,0,0,'',0);
INSERT INTO workflow_task_notify_appointment_cf VALUES (112,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation de votre rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>En raison de l\'indisponibilit&eacute; de nos agents, votre rendez-vous du ${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Veuillez nous excuser pour la g&egrave;ne ocasion&eacute;e.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',0,1,0,'',0);
INSERT INTO workflow_task_notify_appointment_cf VALUES (110,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation de votre rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>A votre demande, votre rendez-vous a bien &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',0,1,0,'',0);
INSERT INTO workflow_task_notify_appointment_cf VALUES (121,'L\'équipe Lutèce','no-reply@mydomain.com','Votre rendez-vous du ${date_appointment} a bien été annulé','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>A votre demande, votre rendez-vous du ${date_appointment} &agrave; ${time_appointment} avec nos services a bien &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce.</p>','','',0,1,0,'',0);

INSERT INTO workflow_task_update_appointment_cancel_cf VALUES (105,106);

INSERT INTO appointment_form (
			id_form, title, description, time_start, time_end, duration_appointments, 
			is_open_monday, is_open_tuesday, is_open_wednesday, is_open_thursday, is_open_friday, is_open_saturday, is_open_sunday, 
			date_start_validity, date_end_validity, is_active, dispolay_title_fo, nb_weeks_to_display, people_per_appointment, 
			id_workflow, is_captcha_enabled, users_can_cancel_appointments, min_days_before_app, id_calendar_template, max_appointment_mail, 
			nb_appointment_week, reference, is_form_step, is_confirmEmail_enabled, is_mandatoryEmail_enabled, icon_form_content, 
			icon_form_mime_type, seizure_duration, date_limit, maximum_number_of_booked_seats, address, longitude, latitude, category)
	VALUES (1,'Formulaire de demande de rendez-vous','demande de RDV','09h00','17h00',30,
			1,0,1,1,1,0,0,
			'2014-02-09',NULL,0,1,8,1,
			101,0,1,4,1,0,
			0,'MDP_LUTECE',0,0,0,NULL,
			'NULL',0,NULL,1,NULL,NULL,NULL,'');
INSERT INTO appointment_form_messages VALUES (1,'Choisir une date','Prénom','','Nom','','Email','','Email de confirmation','','Votre demande de rendez-vous a bien été créée avec la reference <b>%%REF%%</b>','jsp/site/Portal.jsp','Votre demande de rendez-vous a bien été annulée','Terminer','Aucun créneau disponible na été trouvé. Veuillez réessayer ultérieurement.','','Reserver','Complet');

INSERT INTO appointment_slot VALUES (1,1,0,1,1,9,0,9,30,1);
INSERT INTO appointment_slot VALUES(2,1,0,1,1,9,30,10,0,1);
INSERT INTO appointment_slot VALUES(3,1,0,1,1,10,0,10,30,1);
INSERT INTO appointment_slot VALUES(4,1,0,1,1,10,30,11,0,1);
INSERT INTO appointment_slot VALUES(5,1,0,1,1,11,0,11,30,1);
INSERT INTO appointment_slot VALUES(6,1,0,1,1,11,30,12,0,1);
INSERT INTO appointment_slot VALUES(7,1,0,1,1,12,0,12,30,1);
INSERT INTO appointment_slot VALUES(8,1,0,1,1,12,30,13,0,1);
INSERT INTO appointment_slot VALUES(9,1,0,1,1,13,0,13,30,1);
INSERT INTO appointment_slot VALUES(10,1,0,1,1,13,30,14,0,1);
INSERT INTO appointment_slot VALUES(11,1,0,1,1,14,0,14,30,1);
INSERT INTO appointment_slot VALUES(12,1,0,1,1,14,30,15,0,1);
INSERT INTO appointment_slot VALUES(13,1,0,1,1,15,0,15,30,1);
INSERT INTO appointment_slot VALUES(14,1,0,1,1,15,30,16,0,1);
INSERT INTO appointment_slot VALUES(15,1,0,1,1,16,0,16,30,1);
INSERT INTO appointment_slot VALUES(16,1,0,1,1,16,30,17,0,1);
INSERT INTO appointment_slot VALUES(17,1,0,3,1,9,0,9,30,1);
INSERT INTO appointment_slot VALUES(18,1,0,3,1,9,30,10,0,1);
INSERT INTO appointment_slot VALUES(19,1,0,3,1,10,0,10,30,1);
INSERT INTO appointment_slot VALUES(20,1,0,3,1,10,30,11,0,1);
INSERT INTO appointment_slot VALUES(21,1,0,3,1,11,0,11,30,1);
INSERT INTO appointment_slot VALUES(22,1,0,3,1,11,30,12,0,1);
INSERT INTO appointment_slot VALUES(23,1,0,3,1,12,0,12,30,1);
INSERT INTO appointment_slot VALUES(24,1,0,3,1,12,30,13,0,1);
INSERT INTO appointment_slot VALUES(25,1,0,3,1,13,0,13,30,1);
INSERT INTO appointment_slot VALUES(26,1,0,3,1,13,30,14,0,1);
INSERT INTO appointment_slot VALUES(27,1,0,3,1,14,0,14,30,1);
INSERT INTO appointment_slot VALUES(28,1,0,3,1,14,30,15,0,1);
INSERT INTO appointment_slot VALUES(29,1,0,3,1,15,0,15,30,1);
INSERT INTO appointment_slot VALUES(30,1,0,3,1,15,30,16,0,1);
INSERT INTO appointment_slot VALUES(31,1,0,3,1,16,0,16,30,1);
INSERT INTO appointment_slot VALUES(32,1,0,3,1,16,30,17,0,1);
INSERT INTO appointment_slot VALUES(33,1,0,4,1,9,0,9,30,1);
INSERT INTO appointment_slot VALUES(34,1,0,4,1,9,30,10,0,1);
INSERT INTO appointment_slot VALUES(35,1,0,4,1,10,0,10,30,1);
INSERT INTO appointment_slot VALUES(36,1,0,4,1,10,30,11,0,1);
INSERT INTO appointment_slot VALUES(37,1,0,4,1,11,0,11,30,1);
INSERT INTO appointment_slot VALUES(38,1,0,4,1,11,30,12,0,1);
INSERT INTO appointment_slot VALUES(39,1,0,4,1,12,0,12,30,1);
INSERT INTO appointment_slot VALUES(40,1,0,4,1,12,30,13,0,1);
INSERT INTO appointment_slot VALUES(41,1,0,4,1,13,0,13,30,1);
INSERT INTO appointment_slot VALUES(42,1,0,4,1,13,30,14,0,1);
INSERT INTO appointment_slot VALUES(43,1,0,4,1,14,0,14,30,1);
INSERT INTO appointment_slot VALUES(44,1,0,4,1,14,30,15,0,1);
INSERT INTO appointment_slot VALUES(45,1,0,4,1,15,0,15,30,1);
INSERT INTO appointment_slot VALUES(46,1,0,4,1,15,30,16,0,1);
INSERT INTO appointment_slot VALUES(47,1,0,4,1,16,0,16,30,1);
INSERT INTO appointment_slot VALUES(48,1,0,4,1,16,30,17,0,1);
INSERT INTO appointment_slot VALUES(49,1,0,5,1,9,0,9,30,1);
INSERT INTO appointment_slot VALUES(50,1,0,5,1,9,30,10,0,1);
INSERT INTO appointment_slot VALUES(51,1,0,5,1,10,0,10,30,1);
INSERT INTO appointment_slot VALUES(52,1,0,5,1,10,30,11,0,1);
INSERT INTO appointment_slot VALUES(53,1,0,5,1,11,0,11,30,1);
INSERT INTO appointment_slot VALUES(54,1,0,5,1,11,30,12,0,1);
INSERT INTO appointment_slot VALUES(55,1,0,5,1,12,0,12,30,1);
INSERT INTO appointment_slot VALUES(56,1,0,5,1,12,30,13,0,1);
INSERT INTO appointment_slot VALUES(57,1,0,5,1,13,0,13,30,1);
INSERT INTO appointment_slot VALUES(58,1,0,5,1,13,30,14,0,1);
INSERT INTO appointment_slot VALUES(59,1,0,5,1,14,0,14,30,1);
INSERT INTO appointment_slot VALUES(60,1,0,5,1,14,30,15,0,1);
INSERT INTO appointment_slot VALUES(61,1,0,5,1,15,0,15,30,1);
INSERT INTO appointment_slot VALUES(62,1,0,5,1,15,30,16,0,1);
INSERT INTO appointment_slot VALUES(63,1,0,5,1,16,0,16,30,1);
INSERT INTO appointment_slot VALUES(64,1,0,5,1,16,30,17,0,1);
