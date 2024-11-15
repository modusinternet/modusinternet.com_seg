-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Server version: 5.5.47-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `ccms_blacklist`
--

CREATE TABLE IF NOT EXISTS `ccms_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ccms_blacklist`
--

INSERT INTO `ccms_blacklist` (`id`, `data`) VALUES
(1, ''),
(2, 'viagra|v.i.a.g.r.a|v-i-a-g-r-a|cialis|c.i.a.l.i.s|c-i-a-l-i-s');

-- --------------------------------------------------------

--
-- Table structure for table `ccms_ins_db`
--

CREATE TABLE IF NOT EXISTS `ccms_ins_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=www side 1=admin side',
  `grp` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `de` text NOT NULL,
  `en` text NOT NULL,
  `es` text NOT NULL,
  `fr` text NOT NULL,
  `ms` text NOT NULL,
  `pt` text NOT NULL,
  `ar` text NOT NULL,
  `bn` text NOT NULL,
  `ru` text NOT NULL,
  `he` text NOT NULL,
  `hi` text NOT NULL,
  `ja` text NOT NULL,
  `zh-cn` text NOT NULL,
  `zh-tw` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CCMS_insDBPreload_idx` (`status`,`access`,`grp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ccms_ins_db`
--

INSERT INTO `ccms_ins_db` (`id`, `status`, `access`, `grp`, `name`, `de`, `en`, `es`, `fr`, `ms`, `pt`, `ar`, `bn`, `ru`, `he`, `hi`, `ja`, `zh-cn`, `zh-tw`) VALUES
(1, 1, 0, 'index', 'para1', 'Der schnelle braune Fuchs springt über den faulen Hund.', 'The quick brown fox jumps over the lazy dog.', '', 'Le brun rapide le renard saute sur le chien paresseux.', '', '', 'ويقفز الثعلب البني السريع فوق الكلب الكسول.', '', '', '', '', '速い茶色のキツネは怠け者の犬を跳び越えます。', '那只敏捷的棕毛狐狸跃过那只懒狗。', ''),
(2, 1, 0, 'index', 'para2', 'Wenn Zombies ankommen, schnell Richter Pat faxen.', 'When zombies arrive, quickly fax judge Pat.', '', 'Quand les zombies arrivent, faxent rapidement le juge Pat.', '', '', '', '', '', 'כאשר זומבים מגיעים, במהירות פקס לשפוט פט.', '', 'ゾンビが到着するとき、速くパット裁判官にファクスで送ってください。', '僵尸到达时,快速传真法官英保通™技术。', ''),
(3, 1, 0, 'index', 'para3', 'Jede gute Kuh, Fuchs, Eichhörnchen, und Zebra mögen über glückliche Hunde springen.', 'Every good cow, fox, squirrel, and zebra likes to jump over happy dogs.', '', 'Chaque bonne vache, renard, l''écureuil et le zèbre aiment sauter sur des chiens heureux.', '', '', 'كل بقرة جيدة، الثعلب، السنجاب، وحمار وحشي يحب القفز فوق الكلاب سعيدة.', '', '', '', '', 'すべての良い雌牛、キツネ、リスと、シマウマが幸せな犬を跳び越えることを好みます。', '每个好的母牛、狐狸、鼠笼式,和斑马喜欢跳过快乐狗。', ''),
(4, 1, 0, 'index', 'para4', 'Packen(Dichten) Sie meinen Kasten mit fünf Dutzend Alkohol-Krügen ein(ab).', 'Pack my box with five dozen liquor jugs.', '', 'Entassez ma boîte de cinq douzaines de cruches d''alcool.', '', '', '', '', '', 'לארוז התיבה שלי עם חמישה קנקני תריסר משקאות.', '', '５ダースの酒水差しで私の箱を満たしてください。', '包我”框中有五个十几个酒瓶。', ''),
(6, 1, 0, 'page-1', 'para1', 'Wenn der Begriff Open wurde zuerst von Wiley verwendet, beschrieb sie Werke unter der Open Content License (a non-free-Share-Alike-Lizenz, siehe "Freie Inhalte" weiter unten) und vielleicht auch andere Werke unter ähnlichen Bedingungen lizenziert. [2] Es hat da kommen, um eine breitere Klasse von Inhalten beschreiben, ohne herkömmlichen urheberrechtlichen Beschränkungen. Die Offenheit der Inhalte können unter der ''5 Rs Rahmen "auf der Grundlage der Umfang, in dem sie wiederverwendet werden können, überarbeitet, neu gemischt und durch Mitglieder der Öffentlichkeit, ohne gegen das Urheberrecht neu verteilt beurteilt werden. [3] Im Gegensatz zu Open Source und freie Inhalte, gibt keine klare Schwelle, die eine Arbeit erreichen muss, um als "Open Content" zu qualifizieren.<br />\r\n<br />\r\nObwohl Open-Content hat als Gegengewicht zu Urheber beschrieben wurde, [4] Open-Content-Lizenzen verlassen sich auf Versorgung eines Urheberrechtsinhabers, um ihre Arbeit zu lizenzieren.', 'When the term OpenContent was first used by Wiley, it described works licensed under the Open Content License (a non-free share-alike license, see ''Free content'' below) and perhaps other works licensed under similar terms.[2] It has since come to describe a broader class of content without conventional copyright restrictions. The openness of content can be assessed under the ''5Rs Framework'' based on the extent to which it can be reused, revised, remixed and redistributed by members of the public without violating copyright law.[3] Unlike open source and free content, there is no clear threshold that a work must reach to qualify as ''open content''.<br />\r\n<br />\r\nAlthough open content has been described as a counterbalance to copyright,[4] open content licenses rely on a copyright holder''s power to license their work.', '', 'Lorsque le ContenuOuvert terme a été utilisé la première fois par John Wiley & Sons, il décrit les travaux autorisés en vertu de la licence Open Content (une licence de Share-Alike non-libre, voir «contenu libre» ci-dessous) et peut-être d''autres œuvres sous licence dans des conditions similaires. [2] Il a depuis lors pour décrire une classe plus large de contenu sans restrictions de droits d''auteur classiques. L''ouverture de contenu peut être évaluée en vertu du Cadre Rs ''5 ''sur la base de la mesure dans laquelle il peut être réutilisé, révisée, remixé et redistribué par les membres du public sans violer le droit d''auteur. [3] Contrairement à l''open source et du contenu gratuit, il n''existe pas de seuil clair qu''un travail doit atteindre pour être considéré comme ''contenu ouvert''.<br />\r\n<br />\r\nBien que le contenu ouvert a été décrit comme un contrepoids au droit d''auteur, [4] les licences de contenu ouvert s''appuient sur la puissance d''un titulaire de droit d''auteur d''autoriser leur travail.', '', '', '', '', '', '', '', '長期OpenContentが最初ワイリーによって使用された場合には、オープン·コンテンツ·ライセンスの下でライセンス作品を説明した（非フリー - 継承ライセンスは、下記の「無料コンテンツ」を参照）、および類似の用語の下でライセンスおそらく他の作品。[2]それが持っている以来、従来の著作権の制限なしにコンテンツのより広範なクラスを記述するために来る。コンテンツのオープン性は、それが再利用できる範囲、改訂されたリミックスと、著作権法に違反することなく、一般の人で再配布をもと''5ルピー枠組み」の下で評価することができる。そこに[3]とは異なり、オープンソースとフリーコンテンツ、仕事は「オープンコンテンツ」としての資格を到達しなければならない明確なしきい値はありません。<br />\r\n<br />\r\nオープンコンテンツは、著作権のカウンターバランスとして記載されているが、[4]オープンコンテンツライセンスは、自分の仕事をライセンスする著作権者の力に依存しています。', '当最早是由威利术语OpenContent的，它描述根据公开内容许可的作品（非自由 - 相同方式分享许可证，见“免费内容”下面），并在类似的条款授权也许还有其他的作品。[2]它有既然来形容更广泛类别的内容，而无需传统的版权限制。内容的开放性可以根据''5卢比框架“的基础上在何种程度上可以重复使用，修改，重新混音和不违反版权法的市民再分配进行评估。[3]不同于开源和免费的内容，有没有明确的门槛，一个作品必须达到有资格作为“开放内容”。<br />\r\n<br />\r\n虽然公开的内容已被描述为一个平衡的版权，[4]开放内容许可证依靠著作权人的权力，许可他人使用其作品。', ''),
(7, 1, 0, 'page', 'title', 'Mehrsprachige Inhalt Beispiel - Seite # ', 'Multilingual Content Example - Page #', '', 'Exemple de contenu multilingue - Page n ° ', '', '', '', '', '', 'דוגמא תוכן רב לשוני - # עמוד', '', '多言語コンテンツ例 - ページ＃', '多语种内容范例 - 页＃', ''),
(8, 1, 0, 'page-2', 'para1', 'Die Open Website einmal definiert Open als "zur Änderung, Verwendung und Umverteilung unter einer Lizenz ähnlich denen von der Open Source / Free Software-Gemeinschaft verwendet frei verfügbar". [3] Allerdings würde eine solche Definition der Open Content License auszuschließen (OPL) weil die Lizenz verbot Lade "eine Gebühr für die [Open] selbst", ein freier und Open-Source-Software-Lizenzen erforderlich rechts.<br />\r\n<br />\r\nDer Begriff, da in der Bedeutung verschoben und die Open Website beschreibt jetzt Offenheit als "Dauer Konstrukt". [3] Je mehr urheberrechtlich Berechtigungen für die Öffentlichkeit gewährt wird, desto offener ist der Inhalt. Die Schwelle für die Open-Content ist einfach, dass die Arbeit "in einer Weise, die Benutzer mit dem Recht auf mehr Arten von Anwendungen als die normalerweise unter dem Gesetz-ohne Kosten für den Benutzer zulässig zu machen bietet lizenziert."', 'The OpenContent website once defined OpenContent as ''freely available for modification, use and redistribution under a license similar to those used by the Open Source / Free Software community''.[3] However, such a definition would exclude the Open Content License (OPL) because that license forbade charging ''a fee for the [OpenContent] itself'', a right required by free and open source software licenses.<br />\r\n<br />\r\nThe term since shifted in meaning, and the OpenContent website now describes openness as a ''continuous construct''.[3] The more copyright permissions are granted to the general public, the more open the content is. The threshold for open content is simply that the work ''is licensed in a manner that provides users with the right to make more kinds of uses than those normally permitted under the law—at no cost to the user.''', '', 'Le site ContenuOuvert fois défini ContenuOuvert comme «librement disponible pour la modification, l''utilisation et la redistribution sous une licence similaire à ceux utilisés par la communauté du logiciel Open Source / libre». [3] Cependant, une telle définition exclurait l''Open Content License (OPL) parce que la licence interdit charge ''une redevance pour la [ContenuOuvert] lui-même », un droit requis par les licences de logiciels libres et gratuits.<br />\r\n<br />\r\nLe terme depuis changé de sens, et le site ContenuOuvert décrit maintenant l''ouverture comme une «construction continue». [3] Les autorisations plus de droits d''auteur sont accordées pour le grand public, plus ouvert que le contenu est. Le seuil de contenu libre est tout simplement que le travail »est autorisé d''une manière qui offre aux utilisateurs le droit de faire plusieurs types d''utilisations que celles normalement autorisées par la loi, sans frais pour l''utilisateur.', '', '', '', '', '', '', '', 'OpenContentのウェブサイトは、一度「オープンソース/フリーソフトウェアコミュニティによって使用されるものと同様のライセンスの下で変更、使用、再配布のための自由に利用できる」とOpenContentを定義しました。[3]しかし、このような定義は（OPL）を開き、コンテンツライセンスを除外しそのライセンスは、充電禁じているため''のための手数料を[OpenContent]自体''、フリーでオープンソースのソフトウェアライセンスが必要とする権利。<br />\r\n<br />\r\nこの用語は、以降の意味にシフトし、OpenContentのウェブサイトは現在、「継続的な構造」と開放性を説明しています。[3]より、著作権の権限を一般の人に付与され、よりオープンなコンテンツがある。オープンコンテンツの閾値は作業が「通常法律のユーザに無償で認めたもの以外の用途より多くの種類を行う権利をユーザーに提供した方法でライセンスされています。」という単純である', '该OpenContent的网站定义一次OpenContent的是“自由可根据类似于使用的开源/自由软件社区的许可的修改，使用和再分配”。[3]然而，这样的定义会排除开放内容许可证（OPL）因为该许可证禁止充电“的费用为[OpenContent的]本身”，由自由和开放源码软件许可证所需要的权利。<br />\r\n<br />\r\n这个词，因为转移的意义，以及OpenContent的网站现在描述的开放性为“连续结构”。[3]更多版权的权限授予给广大公众，更开放的内容。开放内容的阈值是一个简单的工作“已获得授权，可为用户提供做出多种用途，除根据法律规定，在没有成本的用户通常所允许的权利的方式。”', ''),
(10, 1, 0, 'page', 'page-num', 'Seite #', 'Page #', '', 'Page n °', '', '', '', '', '', '# עמוד', '', 'ページ＃', '页＃', ''),
(11, 1, 0, 'page-3', 'para1', 'Die 5RS freuen auf der Open Website als Rahmen für die Beurteilung, inwieweit die Inhalte offen legen:<br />\r\n<br />\r\nBewahren - das Recht zu machen, eigene und Steuer Kopien des Inhalts (zB, herunterladen, kopieren, speichern und verwalten)<br />\r\nReuse - das Recht, die Inhalte in einer Vielzahl von Möglichkeiten (zB auf einer Website, in einer Klasse, in einer Studiengruppe, in einem Video)<br />\r\nÜberarbeiten - das Recht, sich anzupassen, justieren, zu verändern, oder ändern Sie die Inhalte selbst (zB, zu übersetzen, den Inhalt in eine andere Sprache)<br />\r\nRemix - das Recht, das Original oder überarbeitete Inhalte mit anderen Open-Content zu kombinieren, um etwas Neues zu schaffen (z. B. übernehmen den Inhalt in einem Mashup)<br />\r\nVerteilen Sie - das Recht, Kopien der Original-Content, Ihre Revisionen oder Ihre Remixe mit anderen zu teilen (z. B. eine Kopie des Inhalts an einen Freund) [3]<br />\r\n<br />\r\nDiese breitere Definition unterscheidet Open-Content von Open-Source-Software, da diese müssen für die kommerzielle Nutzung und Anpassung von der Öffentlichkeit zur Verfügung stehen. Allerdings ist es ähnlich wie mehrere Definitionen für offene Bildungsressourcen, die Mittel im Rahmen nicht-kommerzielle und wörtlich Lizenzen enthalten. [5] [6]<br />\r\n<br />\r\nDie Open-Definition, die Open Content und Open Wissen definieren vorgibt, stützt sich stark auf der Open Source Definition; es die beschränkten Sinne des Open Content als libre Inhalt bewahrt. [7]', 'The 5Rs are put forward on the OpenContent website as a framework for assessing the extent to which content is open:<br />\n<br />\nRetain - the right to make, own, and control copies of the content (e.g., download, duplicate, store, and manage)<br />\nReuse - the right to use the content in a wide range of ways (e.g., in a class, in a study group, on a website, in a video)<br />\nRevise - the right to adapt, adjust, modify, or alter the content itself (e.g., translate the content into another language)<br />\nRemix - the right to combine the original or revised content with other open content to create something new (e.g., incorporate the content into a mashup)<br />\nRedistribute - the right to share copies of the original content, your revisions, or your remixes with others (e.g., give a copy of the content to a friend)[3]<br />\n<br />\nThis broader definition distinguishes open content from open source software, since the latter must be available for commercial use and adaptation by the public. However, it is similar to several definitions for open educational resources, which include resources under noncommercial and verbatim licenses.[5][6]<br />\n<br />\nThe Open Definition, which purports to define open content and open knowledge, draws heavily on the Open Source Definition; it preserves the limited sense of open content as libre content.[7]', '', 'Les 5R sont mis en avant sur ​​le site ContenuOuvert comme un cadre pour évaluer la mesure dans laquelle le contenu est ouvert:<br />\r\n<br />\r\nConservez - le droit de faire, propre, et des exemplaires de contrôle du contenu (par exemple, télécharger, reproduire, stocker et gérer)<br />\r\nRéutiliser - le droit d''utiliser le contenu dans un large éventail de moyens (par exemple, dans une classe, dans un groupe d''étude, sur un site web, une vidéo)<br />\r\nRéviser - le droit d''adapter, ajuster, modifier ou altérer le contenu lui-même (par exemple, de traduire le contenu dans une autre langue)<br />\r\nRemix - le droit de combiner le contenu original ou révisé avec d''autres contenus ouverts pour créer quelque chose de nouveau (par exemple, intégrer le contenu dans un mashup)<br />\r\nRedistribuer - le droit de partager des copies du contenu original, vos révisions ou vos remixes avec d''autres (par exemple, une copie de la page à un ami) [3]<br />\r\n<br />\r\nCette définition plus large distingue contenu ouvert de logiciels open source, puisque celui-ci doit être disponible pour un usage commercial et adaptation par le public. Cependant, il est semblable à plusieurs définitions pour les ressources éducatives libres, qui comprennent les ressources sous licences non commerciales et in extenso. [5] [6]<br />\r\n<br />\r\nLa définition de l''Open, qui vise à définir le contenu ouvert et la connaissance ouverte, s''appuie largement sur la définition de l''Open Source; il conserve le sens restreint de contenu ouvert que le contenu libre. [7]', '', '', '', '', '', '5Rs הם העלו באתר האינטרנט של OpenContent כמסגרת להערכת המידה שבה התוכן פתוח:<br />\n<br />\nשמור - הזכות לבצע,, ועותקי שליטה על התוכן (לדוגמא, הורדה, לשכפל, לאחסן ולנהל)<br />\nשימוש חוזר - את הזכות להשתמש בתוכן במגוון רחב של דרכים (לדוגמא, בכיתה, בקבוצת מחקר, באתר אינטרנט, בוידאו)<br />\nלשנות - את הזכות להתאים, להתאים, לשנות, או לשנות את התוכן עצמו (למשל, לתרגם את התוכן לשפה אחרת)<br />\nRemix - את הזכות לשלב את התוכן המקורי או מתוקן עם תוכן פתוח אחר כדי ליצור משהו חדש (למשל, לשלב את התוכן לתוך mashup)<br />\nלהפיץ מחדש - הזכות לשתף עותקים של התוכן המקורי, השינויים שלך, או רמיקסים שלך עם אחרים (למשל, לתת עותק של התוכן לחבר) [3]<br />\n<br />\nהגדרה רחבה יותר זו מייחדת תוכן פתוח מתוכנות קוד פתוחות, שכן זו האחרונה חייבת להיות זמינה לשימוש מסחרי והתאמה על-ידי הציבור. עם זאת, זה דומה לכמה הגדרות למשאבים חינוכיים פתוחים, הכוללים משאבים תחת רישיונות לא מסחריים ומילה במילה. [5] [6]<br />\n<br />\nההגדרה הפתוחה, אשר מתיימרת להגדיר תוכן פתוח וידע פתוח, מושכת בכבדות על הגדרת הקוד הפתוחה; הוא משמר את התחושה של תוכן פתוח כתוכן libre המוגבלת. [7]', '', '5RSが開かれているコンテンツの程度を評価するためのフレームワークとしてOpenContentのウェブサイトで提唱されています。<br />\r\n<br />\r\n保持 - する権利、自分自身、およびコンテンツの制御コピー（例えば、ダウンロード、複製、保存、および管理）<br />\r\n再利用 - 方法の広い範囲内のコンテンツを使用する権利（ウェブサイト上で、研究グループでは、クラスでは、例えば、ビデオで）<br />\r\n改訂 - 右、適応調整、修正、または変更コンテンツ自体（例えば、別の言語にコンテンツを翻訳する）<br />\r\nためには \r\nリミックス - 何か新しいものを作成し、他のオープンコンテンツと、オリジナルまたは改訂内容を結合する権利（例えば、マッシュアップにコンテンツを組み込む）<br />\r\n再配布 - （例えば、友人にコンテンツのコピーを与える）<br />\r\n他の人と、元のコンテンツのコピー、あなたのリビジョン、またはあなたのリミックスを共有する権利を[3]<br />\r\n<br />\r\n後者は一般には公表さ商業的使用と適応のために利用可能でなければならないので、この広義の定義では、オープンソースソフトウェアのオープンコンテンツを区別します。しかし、非商業的かつそのままのライセンスの下でリソースが含まれ、オープン教育リソースのためのいくつかの定義と似ています。[5][6]<br />\r\n<br />\r\nオープンコンテンツ、オープンな知識を定義するために主張しているオープン定義は、オープンソースの定義に大きく描く。それはリブレコンテンツとしてオープンコンテンツの限定された意味を保持します。[7]', '该5RS都提出了OpenContent的网站作为评估在何种程度上的内容是开放的框架上：<br />\r\n<br />\r\n保留 - 做出正确的，自己的，并对其内容的控制副本（例如，下载，复制，存储和管理）<br />\r\n重用 - 使用在各种各样的方式内容的权利（例如，在一个类中，在一个研究小组，在网站上，在视频）<br />\r\n修改 - 适应，调整，修改或改变内容本身（例如，翻译的内容成另一种语言）<br />\r\n的权利 \r\n不怕 - 结合原有的或经修订的内容与其他公开内容，创造新的东西的权利（例如，把内容变成混搭）<br />\r\n重新分配 - 与他人分享原始内容的副本，你的修改，或者你的混音（例如，给内容的副本发送给朋友）的权利[3]<br />\r\n<br />\r\n这种宽泛的定义区分开源软件的开放内容，因为后者必须可用于商业用途和适应公众。然而，它类似于几个定义为开放式教育资源，其中包括根据非商业和逐字牌照资源。[5] [6]<br />\r\n<br />\r\n开放的定义，这看来是确定开放内容和开放的知识，大量借鉴了开放源码定义;它保留了开放内容作为自由报内容的有限的意义。[7]', ''),
(12, 1, 0, 'all', 'login2', 'Angemeldet als', 'Logged in as', 'Conectado como', 'connecté en tant que', 'പ്രവേശിച്ചു പോലെ', 'logado como', 'تسجيل الدخول ك', 'প্রবেশ করেছে এভাবে', 'Вы вошли как', 'מחובר כ', 'के रूप में लॉग इन किया', 'ログイン', '登录为', '登錄為'),
(13, 1, 0, 'all', 'login3', 'Abmelden', 'Logout', 'Cerrar sesión', 'Se déconnecter', 'പുറത്തിറങ്ങുക', 'Deslogar', 'تسجيل خروج', 'ত্যাগ করুন', 'Выйти', 'להתנתק', 'लॉग आउट', 'ログアウト', '登出', '註銷'),
(14, 1, 0, 'all', 'login1', 'Einloggen', 'Login', 'Iniciar sesión', 'S''identifier', 'Log masuk', 'Conecte-se', 'تسجيل الدخول', 'লগইন', 'Авторизоваться', 'התחבר', 'लॉग इन करें', 'ログイン', '登录', '註冊');

-- --------------------------------------------------------

--
-- Table structure for table `ccms_lng_charset`
--

CREATE TABLE IF NOT EXISTS `ccms_lng_charset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lngDesc` char(63) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lng` char(5) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `dir` char(3) NOT NULL COMMENT 'Character direction.  ltr = left to right, rtl = right to left',
  `ptrLng` char(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `ccms_lng_charset`
--

INSERT INTO `ccms_lng_charset` (`id`, `lngDesc`, `status`, `lng`, `default`, `dir`, `ptrLng`) VALUES
(1, 'Deutsch (German)', 1, 'de', 0, 'ltr', ''),
(2, 'Deutsch (Austria)', 1, 'de-at', 0, '', 'de'),
(3, 'Deutsch (Germany)', 1, 'de-de', 0, '', 'de'),
(4, 'Deutsch (Liechtenstein)', 1, 'de-li', 0, '', 'de'),
(5, 'Deutsch (Luxembourg)', 1, 'de-lu', 0, '', 'de'),
(6, 'Deutsch (Switzerland)', 1, 'de-ch', 0, '', 'de'),
(7, 'English', 1, 'en', 1, 'ltr', ''),
(8, 'English (Australia)', 1, 'en-au', 0, '', 'en'),
(9, 'English (Belize)', 1, 'en-bz', 0, '', 'en'),
(10, 'English (Canada)', 1, 'en-ca', 0, '', 'en'),
(11, 'English (Ireland)', 1, 'en-ie', 0, '', 'en'),
(12, 'English (Jamaica)', 1, 'en-jm', 0, '', 'en'),
(13, 'English (New Zealand)', 1, 'en-nz', 0, '', 'en'),
(14, 'English (Philippines)', 1, 'en-ph', 0, '', 'en'),
(15, 'English (South Africa)', 1, 'en-za', 0, '', 'en'),
(16, 'English (Trinidad and Tobago)', 1, 'en-tt', 0, '', 'en'),
(17, 'English (United Kingdom)', 1, 'en-gb', 0, '', 'en'),
(18, 'English (United States)', 1, 'en-us', 0, '', 'en'),
(19, 'English (Zimbabwe)', 1, 'en-zw', 0, '', 'en'),
(20, 'Español (Spanish)', 1, 'es', 0, 'ltr', ''),
(21, 'Español (Argentina)', 1, 'es-ar', 0, '', 'es'),
(22, 'Español (Bolivia)', 1, 'es-bo', 0, '', 'es'),
(23, 'Español (Chile)', 1, 'es-cl', 0, '', 'es'),
(24, 'Español (Colombia)', 1, 'es-co', 0, '', 'es'),
(25, 'Español (Costa Rica)', 1, 'es-cr', 0, '', 'es'),
(26, 'Español (Dominican Republic)', 1, 'es-do', 0, '', 'es'),
(27, 'Español (Ecuador)', 1, 'es-ec', 0, '', 'es'),
(28, 'Español (El Salvador)', 1, 'es-sv', 0, '', 'es'),
(29, 'Español (Guatemala)', 1, 'es-gt', 0, '', 'es'),
(30, 'Español (Honduras)', 1, 'es-hn', 0, '', 'es'),
(31, 'Español (Mexico)', 1, 'es-mx', 0, '', 'es'),
(32, 'Español (Nicaragua)', 1, 'es-ni', 0, '', 'es'),
(33, 'Español (Panama)', 1, 'es-pa', 0, '', 'es'),
(34, 'Español (Paraguay)', 1, 'es-py', 0, '', 'es'),
(35, 'Español (Peru)', 1, 'es-pe', 0, '', 'es'),
(36, 'Español (Puerto Rico)', 1, 'es-pr', 0, '', 'es'),
(37, 'Español (Spain)', 1, 'es-es', 0, '', 'es'),
(38, 'Español (Uruguay)', 1, 'es-uy', 0, '', 'es'),
(39, 'Español (Venezuela)', 1, 'es-ve', 0, '', 'es'),
(40, 'Français (French)', 1, 'fr', 0, 'ltr', ''),
(41, 'Français (Belgium)', 1, 'fr-be', 0, '', 'fr'),
(42, 'Français (Canada)', 1, 'fr-ca', 0, '', 'fr'),
(43, 'Français (France)', 1, 'fr-fr', 0, '', 'fr'),
(44, 'Français (Luxembourg)', 1, 'fr-lu', 0, '', 'fr'),
(45, 'Français (Monaco)', 1, 'fr-mc', 0, '', 'fr'),
(46, 'Français (Switzerland)', 1, 'fr-ch', 0, '', 'fr'),
(47, 'Melayu Indonesia (Malay Indonesian)', 1, 'ms', 0, 'ltr', ''),
(48, 'Português (Portuguese)', 1, 'pt', 0, 'ltr', ''),
(49, 'العربية (Arabic)', 1, 'ar', 0, 'rtl', ''),
(50, 'বাঙ্গালী (Bengali)', 1, 'bn', 0, 'ltr', ''),
(51, 'Pусский (Russian)', 1, 'ru', 0, 'ltr', ''),
(52, 'हिन्दी (Hindi)', 1, 'hi', 0, 'ltr', ''),
(53, '日本語 (Japanese)', 1, 'ja', 0, 'ltr', ''),
(54, '中国 (Chinese)', 1, 'zh', 0, '', 'zh-cn'),
(55, '简体中国 (Simplified Chinese)', 1, 'zh-cn', 0, 'ltr', ''),
(56, '中國傳統 (Traditional Chinese)', 1, 'zh-tw', 0, '', 'zh-cn'),
(57, 'עברית (Hebrew)', 1, 'he', 0, 'rtl', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccms_session`
--

CREATE TABLE IF NOT EXISTS `ccms_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `first` int(20) unsigned NOT NULL DEFAULT '0' COMMENT 'The moment when the session was initially created.',
  `last` int(20) unsigned NOT NULL DEFAULT '0' COMMENT 'The last time the session was accessed.',
  `exp` int(20) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'The number of times they failed to login properly to the user area.',
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visitorsID` (`code`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Session information to help keep track of visitors.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ccms_user`
--

CREATE TABLE IF NOT EXISTS `ccms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hash` varchar(128) NOT NULL COMMENT 'The hashed version of the users actual password.',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `alias` varchar(32) NOT NULL COMMENT 'nick name / not a login name',
  `super` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0=not super user, 1=super user',
  `priv` varchar(1024) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `position` varchar(128) NOT NULL,
  `phone1` varchar(64) NOT NULL,
  `phone2` varchar(64) NOT NULL,
  `facebook` varchar(128) NOT NULL,
  `skype` varchar(32) NOT NULL,
  `note` varchar(1024) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) NOT NULL,
  `prov_state` varchar(32) NOT NULL,
  `country` varchar(64) NOT NULL,
  `post_zip` varchar(32) NOT NULL,
  `nav_toggle` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_2` (`email`),
  KEY `visitorsID` (`status`),
  KEY `email` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='Contains the login settings for fully registered users.' AUTO_INCREMENT=1 ;
