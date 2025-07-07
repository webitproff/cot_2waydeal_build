// для ряда функций типа cot_market_selectcat_select2 (формы поиска, списки публикацийй)
// Ждём полной загрузки DOM
$(document).ready(function () {
  
  // Имя поля селектора категорий
  const selectName = 'c';

  // CSS-селектор для этого поля
  const selectSelector = 'select[name="' + selectName + '"]';

  // Инициализация Select2 на нашем селекте
  $(selectSelector).select2({
    // Плейсхолдер по умолчанию
    placeholder: "---",

    // Ширина селекта — на всю доступную
    width: '100%',

    // Кастомизация отображения опций (выпадающий список)
    templateResult: function (state) {
      // Если это placeholder (нет ID) — возвращаем как есть
      if (!state.id) return state.text;

      // Получаем глубину вложенности из атрибута data-depth
      const depth = parseInt(state.element?.dataset?.depth || '0', 10);

      // Убираем лишние пробелы вокруг текста
      const text = state.text.trim();

      // Генерируем отступ на основе глубины (по 3 пробела на уровень)
      const indent = '\u00A0'.repeat(depth * 3);

      // Если это корневая категория — выделяем жирным
      if (depth === 0) {
        return $('<span><strong>' + text + '</strong></span>');
      } 
      // Для вложенных — просто добавляем отступ
      else {
        return $('<span>' + indent + text + '</span>');
      }
    },

    // Кастомизация отображения выбранной опции (внутри поля)
    templateSelection: function (state) {
      // Если это placeholder — возвращаем как есть
      if (!state.id) return state.text;

      // Возвращаем текст без модификации (уже без "├─" в HTML)
      return state.text;
    }
  });

  // Обновляем атрибут title у select2-поля при выборе
  $(selectSelector).on('select2:select', function (e) {
    // Очищаем выбранный текст от пробелов
    const selectedText = e.params.data.text.trim();

    // Получаем имя поля
    const containerId = $(this).attr('name');

    // Собираем ID контейнера, где отображается выбранный текст
    const renderedSelector = '#select2-' + containerId + '-container';

    // Устанавливаем очищенный текст в атрибут title (для тултипа)
    $(renderedSelector).attr('title', selectedText);
  });

  // При загрузке страницы: если уже есть выбранная категория
  const selectedOption = $(selectSelector).find(':selected');
  if (selectedOption.length) {
    // Очищаем текст от пробелов
    const cleanTitle = selectedOption.text().trim();

    // Получаем имя поля
    const containerId = $(selectSelector).attr('name');

    // Формируем ID контейнера select2
    const renderedSelector = '#select2-' + containerId + '-container';

    // Устанавливаем title с текущим значением
    $(renderedSelector).attr('title', cleanTitle);
  }

});


// для ряда функций типа cot_market_selectbox_structure_select2 (добавление и редактирование страниц)
$(document).ready(function () {
  $('select[name="rcat"]').select2({
    placeholder: "---",
    width: '100%',

    // Отображение в выпадающем списке
    templateResult: function (state) {
      if (!state.id) return state.text;

      const depth = parseInt(state.element?.dataset?.depth || '0', 10);
      const cleanText = state.text.trim();
      const indent = '\u00A0'.repeat(depth * 3); // каждый уровень — +3 неразрывных пробела

      if (depth === 0) {
        return $('<span><strong>' + cleanText + '</strong></span>');
      } else {
        return $('<span>' + indent + cleanText + '</span>');
      }
    },

    // Отображение выбранного значения
    templateSelection: function (state) {
      if (!state.id) return state.text;
      return state.text.trim();
    }
  });

  // Устанавливаем title вручную при выборе
  $('select[name="rcat"]').on('select2:select', function (e) {
    const selectedText = e.params.data.text.trim();
    const containerId = $(this).attr('name');
    const renderedSelector = '#select2-' + containerId + '-container';
    $(renderedSelector).attr('title', selectedText);
  });

  // Устанавливаем title при загрузке
  const selectedOption = $('select[name="rcat"]').find(':selected');
  if (selectedOption.length) {
    const cleanTitle = selectedOption.text().trim();
    const containerId = $('select[name="rcat"]').attr('name');
    const renderedSelector = '#select2-' + containerId + '-container';
    $(renderedSelector).attr('title', cleanTitle);
  }
});
