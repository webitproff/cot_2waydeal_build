<?php
/**
 * Reviews plugin
 * Filename: reviews.ru.lang.php
 * @package reviews
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) 2025
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

/**
 * Module Config
 */
$L['cfg_checkprojects'] = 'Разрешить добавлять отзывы только при наличии совместных проектов';
$L['cfg_userall'] = 'Отображать на странице пользователя все отзывы';

/**
 * Interface Labels
 */
$L['reviews_chooseprj'] = 'Выберите проект';
$L['reviews_reviewforproject'] = 'Отзыв о проекте';
$L['reviews_projectsonly'] = 'Отзывы можно оставлять только за проекты, по которым вы сотрудничали.';
$L['reviews_text'] = 'Текст отзыва';
$L['reviews_score'] = 'Оценка';
$L['reviews_review'] = 'Отзыв';
$L['reviews_reviews'] = 'Отзывы';
$L['reviews_add_review'] = 'Добавить отзыв';
$L['reviews_edit_review'] = 'Редактировать отзыв';
$L['reviews_user'] = 'Пользователь';
$L['reviews_maintitle'] = 'Заголовок';
$L['reviews_date'] = 'Дата';
$L['reviews_author'] = 'Автор';
$L['reviews_recipient'] = 'Получатель';
$L['reviews_new_review'] = 'Новый отзыв';
$L['reviews_new_review_body'] = 'Добавлен новый отзыв';
$L['reviews_updated_review'] = 'Отзыв обновлён';
$L['reviews_updated_review_body'] = 'Отзыв был обновлён';

/**
 * Score Values and Titles
 */
$L['reviews_score_values'] = [1, 2, 3, 4, 5];
$L['reviews_score_titles'] = ['1 звезда (Крайне отрицательно)', '2 звезды (Плохо)', '3 звезды (Нейтрально)', '4 звезды (Хорошо)', '5 звезд (Всем доволен)'];

/**
 * Error Messages
 */
$L['reviews_error_toyourself'] = 'Нельзя оставить отзыв самому себе';
$L['reviews_error_projectsonly'] = 'Отзывы можно оставлять только за проекты, по которым вы сотрудничали';
$L['reviews_error_exists'] = 'Отзыв уже создан';
$L['reviews_error_emptytext'] = 'Отзыв не может быть пустым';
$L['reviews_error_emptyscore'] = 'Укажите оценку';
$L['reviews_error_invaliduser'] = 'Выбранный пользователь недействителен';
$L['reviews_error_nouserselected'] = 'Пользователь не выбран';
$L['reviews_err_title'] = 'Заголовок обязателен';

/**
 * Action Buttons
 */
$L['Add'] = 'Добавить';
$L['Edit'] = 'Редактировать';
$L['Delete'] = 'Удалить';
$L['Close'] = 'Закрыть';

$L['reviews_last_index'] = 'Последние отзывы на сайте';
?>