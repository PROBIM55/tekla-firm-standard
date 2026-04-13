using Tekla.Structures.Model;
using Tekla.Structures.Model.Operations;
using System;

namespace Tekla.Technology.Akit.UserScript
{
    public class Script
    {
        public static void Run(Tekla.Technology.Akit.IScript akit)
        {
            ModelHandler modelHandler = new ModelHandler();

            // 1. Настройки путей (используем ваш сетевой путь)
            string serverIP = "62.113.36.107";
            string baseFolder = @"\\" + serverIP + @"\BIM_Models\Tekla\01_ОБЪЕКТЫ";
            string modelName = "ОЧ";
            string template = "Общий"; // Убедитесь, что такой шаблон есть в среде GOST

            // 2. Создание модели сразу на сервере
            if (modelHandler.CreateNewModel(modelName, baseFolder, template))
            {

                // 3. Установка путей к папке Проекта и Фирмы (пример путей на том же сервере)
                // Можете заменить "Firm" и "Project" на реальные названия ваших папок
                Operation.SetUserProperty("XS_PROJECT", baseFolder + @"\Project_Settings");
                Operation.SetUserProperty("XS_FIRM", @"\\" + serverIP + @"\BIM_Models\Tekla\FIRM");

                // 4. Перевод в многопользовательский режим
                // ВАЖНО: На сервере 62.113.36.107 должен быть запущен Tekla Multiuser Server
                modelHandler.ConvertMultiUserModel(serverIP);

                // Фиксация изменений
                new Model().CommitChanges();

                Operation.DisplayPrompt("Модель 'ОЧ' создана в Multi-user режиме на сервере.");
            }
        }
    }
}
