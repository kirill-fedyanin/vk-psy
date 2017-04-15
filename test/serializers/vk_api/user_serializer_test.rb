require 'test_helper'

class VkApi::UserSerializerTest < ActiveSupport::TestCase
  def setup
    @serialized = VkApi::UserSerializer.new(info)
  end

  def test_get_user
    puts @serialized.hash
  end

  def info
    JSON.parse '{ "id": 2549954, "first_name": "Кирилл", "last_name": "Федянин", "bdate": "27.2.1989", "city": { "id": 1, "title": "Москва" }, "country": { "id": 1, "title": "Россия" }, "occupation": { "type": "university", "id": 297, "name": "МФТИ (ГУ)" }, "universities": [ { "id": 297, "country": 1, "city": 1, "name": "МФТИ (ГУ)", "faculty": 26881, "faculty_name": "Факультет радиотехники и кибернетики", "chair": 1925372, "chair_name": "Радиолокационные и управляющие системы", "graduation": 2010, "education_form": "Очное отделение", "education_status": "Студент (бакалавр)" }, { "id": 128, "country": 1, "city": 1, "name": "НИУ ВШЭ (ГУ-ВШЭ)", "faculty": 474, "faculty_name": "Факультет бизнеса и менеджмента (Бизнес-информатики, Логистики, Менеджмента)", "chair": 1848406, "chair_name": " Кафедра моделирования и оптимизации бизнес-процессов (Школа бизнес-информатики)", "graduation": 2014, "education_form": "Очное отделение", "education_status": "Студент (магистр)" } ] }'
  end
end
