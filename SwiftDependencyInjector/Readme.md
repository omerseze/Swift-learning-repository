-swift dependency injection konusu ile alakalı örnek bir uygulama ve protokol kodlarını içermektedir
-Dependency injection kaba tabir ile bir sınıfın/nesnenin bağımlılıklardan kurtulmasını amaçlayan ve o nesneyi olabildiğince bağımsızlaştıran bir programlama tekniği/prensibidir.

-Dependency Injection uygulayarak; bir sınıfının bağımlı olduğu nesneden bağımsız hareket edebilmesini sağlayabilir ve kod üzerinde olası geliştirmelere karşın değişiklik yapma ihtiyacını ortadan kaldırabilirsiniz.

-Dependency Injection uygulamanın avantajları nelerdir ?
Bağımlılık oluşturacak nesneleri direkt olarak kullanmak yerine, bu nesneleri dışardan verilmesiyle sistem içerisindeki bağımlılığı minimize etmek amaçlanır. Böylece bağımlılık bulunan sınıf üzerindeki değişikliklerden korunmuş oluruz.
Unit testlerin yazımını kolaylaştırırken doğruluğunu da artırır. Yazılım geliştirmedeki en önemli konulardan biri de yazılım içerisinde bulunan componentlerin “loosely coupled” (gevşek bağlı) olmasıdır. Dependency Injection’da bunu sağlayabilen önemli tekniklerden birisidir. Böylece bağımsızlığı sağlanan sınıflar tek başına test edilebilir.
-
