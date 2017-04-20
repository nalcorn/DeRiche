-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 08:07 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deriche`
--

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `FormID` int(10) NOT NULL,
  `UserID` int(4) NOT NULL,
  `patientID` int(11) NOT NULL,
  `FormType` varchar(20) NOT NULL,
  `FormInfo` longblob NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Revision1` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`FormID`, `UserID`, `patientID`, `FormType`, `FormInfo`, `Date`, `Revision1`) VALUES
(1, 1, 1, 'BC', 0x2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a2040617574686f72204361726c204d6f6f6e20494920332d332d31370d0a2a204e6f746520627573696e657373206f626a65637420666f7220446552696368696520776562206170702e0d0a2a2076657273696f6e20312e300d0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a7061636b61676520427573696e6573733b0d0a0d0a696d706f72742044414f2e64623b0d0a696d706f7274206a6176612e73716c2e436f6e6e656374696f6e3b0d0a696d706f7274206a6176612e73716c2e507265706172656453746174656d656e743b0d0a696d706f7274206a6176612e73716c2e526573756c745365743b0d0a696d706f7274206a6176612e73716c2e53514c457863657074696f6e3b0d0a0d0a2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a200d0a2a204e6f7465206d61696e20636c61737320666f7220446552696368696520776562206170706c69636174696f6e2e0d0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a7075626c696320636c617373204e6f7465207b0d0a202020200d0a202020207072697661746520537472696e67206e6f746549443b0d0a202020200d0a202020207072697661746520537472696e67206e6f7465733b0d0a202020200d0a202020207072697661746520537472696e672054696d655f537461727465643b0d0a202020200d0a202020207072697661746520537472696e67204c6173745f557064617465643b0d0a202020200d0a202020207072697661746520537472696e672054696d655f5375626d69747465643b0d0a202020200d0a202020207072697661746520537472696e672054696d655f41636365707465643b0d0a202020200d0a202020207072697661746520537472696e6720436f6d6d656e743b0d0a202020200d0a202020207072697661746520537472696e67205375626d69747465643b0d0a202020200d0a202020207072697661746520537472696e672054696d6552657669657765725f41636365707465643b0d0a202020200d0a202020207072697661746520537472696e67204e6f746552657669657765725f41636365707465643b0d0a202020200d0a202020207072697661746520537472696e672070617469656e7449443b0d0a202020200d0a202020207072697661746520537472696e67205573657249443b0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e20746865206e6f746549440d0a20202020202a2f0d0a202020207075626c696320537472696e67206765744e6f746549442829207b0d0a202020202020202072657475726e206e6f746549443b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d206e6f7465494420746865206e6f7465494420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f6964207365744e6f7465494428537472696e67206e6f7465494429207b0d0a2020202020202020746869732e6e6f74654944203d206e6f746549443b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e20746865206e6f7465730d0a20202020202a2f0d0a202020207075626c696320537472696e67206765744e6f7465732829207b0d0a202020202020202072657475726e206e6f7465733b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d206e6f74657320746865206e6f74657320746f207365740d0a20202020202a2f0d0a202020207075626c696320766f6964207365744e6f74657328537472696e67206e6f74657329207b0d0a2020202020202020746869732e6e6f746573203d206e6f7465733b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e207468652054696d655f537461727465640d0a20202020202a2f0d0a202020207075626c696320537472696e672067657454696d655f537461727465642829207b0d0a202020202020202072657475726e2054696d655f537461727465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d2054696d655f53746172746564207468652054696d655f5374617274656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f69642073657454696d655f5374617274656428537472696e672054696d655f5374617274656429207b0d0a2020202020202020746869732e54696d655f53746172746564203d2054696d655f537461727465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e20746865204c6173745f557064617465640d0a20202020202a2f0d0a202020207075626c696320537472696e67206765744c6173745f557064617465642829207b0d0a202020202020202072657475726e204c6173745f557064617465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d204c6173745f5570646174656420746865204c6173745f5570646174656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f6964207365744c6173745f5570646174656428537472696e67204c6173745f5570646174656429207b0d0a2020202020202020746869732e4c6173745f55706461746564203d204c6173745f557064617465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e207468652054696d655f5375626d69747465640d0a20202020202a2f0d0a202020207075626c696320537472696e672067657454696d655f5375626d69747465642829207b0d0a202020202020202072657475726e2054696d655f5375626d69747465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d2054696d655f5375626d6974746564207468652054696d655f5375626d697474656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f69642073657454696d655f5375626d697474656428537472696e672054696d655f5375626d697474656429207b0d0a2020202020202020746869732e54696d655f5375626d6974746564203d2054696d655f5375626d69747465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e207468652054696d655f41636365707465640d0a20202020202a2f0d0a202020207075626c696320537472696e672067657454696d655f41636365707465642829207b0d0a202020202020202072657475726e2054696d655f41636365707465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d2054696d655f4163636570746564207468652054696d655f416363657074656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f69642073657454696d655f416363657074656428537472696e672054696d655f416363657074656429207b0d0a2020202020202020746869732e54696d655f4163636570746564203d2054696d655f41636365707465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e2074686520436f6d6d656e740d0a20202020202a2f0d0a202020207075626c696320537472696e6720676574436f6d6d656e742829207b0d0a202020202020202072657475726e20436f6d6d656e743b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d20436f6d6d656e742074686520436f6d6d656e7420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f696420736574436f6d6d656e7428537472696e6720436f6d6d656e7429207b0d0a2020202020202020746869732e436f6d6d656e74203d20436f6d6d656e743b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e20746865205375626d69747465640d0a20202020202a2f0d0a202020207075626c696320537472696e67206765745375626d69747465642829207b0d0a202020202020202072657475726e205375626d69747465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d205375626d697474656420746865205375626d697474656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f6964207365745375626d697474656428537472696e67205375626d697474656429207b0d0a2020202020202020746869732e5375626d6974746564203d205375626d69747465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e207468652054696d6552657669657765725f41636365707465640d0a20202020202a2f0d0a202020207075626c696320537472696e672067657454696d6552657669657765725f41636365707465642829207b0d0a202020202020202072657475726e2054696d6552657669657765725f41636365707465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d2054696d6552657669657765725f4163636570746564207468652054696d6552657669657765725f416363657074656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f69642073657454696d6552657669657765725f416363657074656428537472696e672054696d6552657669657765725f416363657074656429207b0d0a2020202020202020746869732e54696d6552657669657765725f4163636570746564203d2054696d6552657669657765725f41636365707465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e20746865204e6f746552657669657765725f41636365707465640d0a20202020202a2f0d0a202020207075626c696320537472696e67206765744e6f746552657669657765725f41636365707465642829207b0d0a202020202020202072657475726e204e6f746552657669657765725f41636365707465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d204e6f746552657669657765725f416363657074656420746865204e6f746552657669657765725f416363657074656420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f6964207365744e6f746552657669657765725f416363657074656428537472696e67204e6f746552657669657765725f416363657074656429207b0d0a2020202020202020746869732e4e6f746552657669657765725f4163636570746564203d204e6f746552657669657765725f41636365707465643b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e207468652070617469656e7449440d0a20202020202a2f0d0a202020207075626c696320537472696e672067657450617469656e7449442829207b0d0a202020202020202072657475726e2070617469656e7449443b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d2070617469656e744944207468652070617469656e74494420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f69642073657450617469656e74494428537472696e672070617469656e74494429207b0d0a2020202020202020746869732e70617469656e744944203d2070617469656e7449443b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a204072657475726e20746865205573657249440d0a20202020202a2f0d0a202020207075626c696320537472696e67206765745573657249442829207b0d0a202020202020202072657475726e205573657249443b0d0a202020207d0d0a0d0a202020202f2a2a0d0a20202020202a2040706172616d20557365724944207468652055736572494420746f207365740d0a20202020202a2f0d0a202020207075626c696320766f69642073657455736572494428537472696e672055736572494429207b0d0a2020202020202020746869732e557365724944203d205573657249443b0d0a202020207d0d0a202020200d0a2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a2020200d0a2a205573657220646973706c617920666f722074657374696e672e0d0a202a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a202020207075626c696320766f696420646973706c617928290d0a202020207b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2822426567696e204e6f74652e6a61766120646973706c61792022293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e28224e6f74652049643a20222b6765744e6f746549442829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e28224e6f7465733a20222b6765744e6f7465732829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e282254696d6520537461727465643a20222b67657454696d655f537461727465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e28224c61737420557064617465643a20222b6765744c6173745f557064617465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e282254696d65205375626d69747465643a20222b67657454696d655f5375626d69747465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e282254696d652041636365707465643a20222b67657454696d655f41636365707465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2822436f6d6d656e743a20222b676574436f6d6d656e742829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e28225375626d69747465643a20222b6765745375626d69747465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e282254696d652052657669657765722041636365707465643a20222b67657454696d6552657669657765725f41636365707465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e28224e6f74652052657669657765722041636365707465643a20222b6765744e6f746552657669657765725f41636365707465642829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e282250617469656e742049443a20222b67657450617469656e7449442829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2822557365722049443a20222b6765745573657249442829293b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2822456e64204e6f74652e6a61766120646973706c61792022293b0d0a202020207d2f2f656e6420646973706c61790d0a2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a2053656c65637444422829204d6574686f640d0a2a20546869732073656c6563744442206d6574686f642077696c6c20676f20696e20746f20746865204170706f696e746d656e7473207461626c6520696e207468652044656e746973742044422e0d0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a7075626c696320766f69642073656c656374444228537472696e67206e696429207468726f77732053514c457863657074696f6e0d0a7b0d0a202020206e6f74654944203d206e69643b0d0a200d0a202020200d0a20202020436f6e6e656374696f6e20636f6e31203d206e756c6c3b0d0a20202020507265706172656453746174656d656e74207073203d206e756c6c3b0d0a202020200d0a20202020537472696e672073716c203d202253656c656374202a2066726f6d206e6f7465207768657265204e6f74654944203d203f223b0d0a202020200d0a20202020202020207472790d0a20202020202020207b0d0a202020202020202020202020636f6e31203d2064622e64626328293b0d0a2020202020202020202020207073203d20636f6e312e7072657061726553746174656d656e742873716c293b0d0a20202020202020202020202070732e736574537472696e6728312c206765744e6f746549442829293b0d0a2020202020202020202020202f2f657865637574652073716c2073746174656d656e740d0a202020202020202020202020526573756c74536574207273203d2070732e65786563757465517565727928293b0d0a2020202020202020202020200d0a2020202020202020202020207768696c652872732e6e6578742829290d0a2020202020202020202020207b200d0a202020202020202020202020202020202f2f7365745573657249642872732e676574537472696e67283129293b0d0a202020202020202020202020202020207365744e6f7465732872732e676574537472696e67283229293b0d0a2020202020202020202020202020202073657454696d655f537461727465642872732e676574537472696e67283329293b0d0a202020202020202020202020202020207365744c6173745f557064617465642872732e676574537472696e67283429293b0d0a2020202020202020202020202020202073657454696d655f5375626d69747465642872732e676574537472696e67283529293b0d0a2020202020202020202020202020202073657454696d655f41636365707465642872732e676574537472696e67283629293b0d0a20202020202020202020202020202020736574436f6d6d656e742872732e676574537472696e67283729293b0d0a202020202020202020202020202020207365745375626d69747465642872732e676574537472696e67283829293b0d0a2020202020202020202020202020202073657454696d6552657669657765725f41636365707465642872732e676574537472696e67283929293b0d0a202020202020202020202020202020207365744e6f746552657669657765725f41636365707465642872732e676574537472696e6728313029293b0d0a2020202020202020202020202020202073657450617469656e7449442872732e676574537472696e6728313129293b0d0a202020202020202020202020202020207365745573657249442872732e676574537472696e6728313229293b0d0a2020202020202020202020207d0d0a20202020202020207d0d0a202020202020202063617463682853514c457863657074696f6e2065290d0a20202020202020207b0d0a202020202020202020202020652e7072696e74537461636b547261636528293b0d0a20202020202020207d0d0a2020202020202020202020200d0a202020202020202066696e616c6c790d0a20202020202020207b0d0a20202020202020202020202069662028707320213d206e756c6c290d0a2020202020202020202020207b0d0a2020202020202020202020202020202070732e636c6f736528293b0d0a2020202020202020202020207d0d0a2020202020202020202020200d0a202020202020202020202020696628636f6e3120213d206e756c6c290d0a2020202020202020202020207b0d0a202020202020202020202020636f6e312e636c6f736528293b0d0a2020202020202020202020207d0d0a20202020202020207d0d0a20202020202020202020200d0a7d2f2f20656e64207075626c696320766f69642073656c65637444420d0a2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a20496e73657274206d6574686f642077696c6c20707574207573657220696e666f20696e746f2074686520446552696368696520776562206170702e0d0a2a20496e736572747320696e746f20746865206e6f7465207461626c652e0d0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a0d0a7075626c696320766f696420696e73657274444228537472696e67206e312c20537472696e672074732c20537472696e67206c752c20537472696e67207475732c20537472696e672074612c20537472696e6720632c20537472696e6720732c20537472696e67207472612c20537472696e67206e72612c20537472696e67207069642c20537472696e672075696429207468726f77732053514c457863657074696f6e0d0a7b0d0a20202020200d0a2020206e6f746573203d206e313b0d0a20202054696d655f53746172746564203d2074733b0d0a2020204c6173745f55706461746564203d206c753b0d0a20202054696d655f5375626d6974746564203d207475733b0d0a20202054696d655f4163636570746564203d2074613b0d0a202020436f6d6d656e74203d20633b0d0a2020205375626d6974746564203d20733b0d0a20202054696d6552657669657765725f4163636570746564203d207472613b20202020200d0a2020204e6f746552657669657765725f4163636570746564203d206e72613b0d0a20202070617469656e744944203d7069643b0d0a202020557365724944203d207569643b0d0a20202020202020202020200d0a20202020436f6e6e656374696f6e20636f6e31203d206e756c6c3b0d0a20202020507265706172656453746174656d656e74207073203d206e756c6c3b0d0a202020200d0a20202020537472696e672073716c203d2022696e7365727420696e746f206e6f7465220d0a20202020202020202020202020202020202020202020202020202020202020202020202020202b22286e6f7465732c2054696d655f537461727465642c204c6173745f557064617465642c2054696d655f5375626d69747465642c2054696d655f41636365707465642c20436f6d6d656e742c205375626d69747465642c2054696d6552657669657765725f41636365707465642c204e6f746552657669657765725f41636365707465642c2070617469656e7449442c20557365724944292076616c756573220d0a2020202020202020202020200d0a20202020202020202020202020202020202020202020202020202020202020202020202020202b22283f2c3f2c3f2c3f2c3f2c3f2c3f2c3f2c3f2c3f2c3f29223b0d0a20202020202020200d0a202020207472790d0a202020207b0d0a2020202020202020636f6e31203d2064622e64626328293b0d0a20202020202020207073203d20636f6e312e7072657061726553746174656d656e742873716c293b0d0a202020202020200d0a202020202020202070732e736574537472696e6728312c206765744e6f7465732829293b0d0a202020202020202070732e736574537472696e6728322c2067657454696d655f537461727465642829293b0d0a202020202020202070732e736574537472696e6728332c206765744c6173745f557064617465642829293b0d0a202020202020202070732e736574537472696e6728342c2067657454696d655f5375626d69747465642829293b0d0a202020202020202070732e736574537472696e6728352c2067657454696d655f41636365707465642829293b0d0a202020202020202070732e736574537472696e6728362c20676574436f6d6d656e742829293b0d0a202020202020202070732e736574537472696e6728372c206765745375626d69747465642829293b0d0a202020202020202070732e736574537472696e6728382c2067657454696d6552657669657765725f41636365707465642829293b0d0a202020202020202070732e736574537472696e6728392c206765744e6f746552657669657765725f41636365707465642829293b0d0a202020202020202070732e736574537472696e672831302c2067657450617469656e7449442829293b0d0a202020202020202070732e736574537472696e672831312c206765745573657249442829293b0d0a20202020202020202f2f70732e736574537472696e672831312c206765745573657249442829293b0d0a20202020202020200d0a20202020202020200d0a20202020202020200d0a202020202020202020696e74206e203d2070732e6578656375746555706461746528293b0d0a202020202020202020200d0a20202020202020206966286e3d3d31290d0a20202020202020207b200d0a20202020202020202020202053797374656d2e6f75742e7072696e746c6e2822496e7365727420557365722e6a617661205375636365737366756c21212122293b0d0a20202020202020207d0d0a2020202020202020656c73650d0a20202020202020207b0d0a20202020202020202020202053797374656d2e6f75742e7072696e746c6e2822496e7365727420557365722e6a617661204661696c656421212122293b0d0a20202020202020202020200d0a20202020202020207d0d0a202020207d0d0a2020202063617463682853514c457863657074696f6e2065290d0a202020207b0d0a2020202020202020652e7072696e74537461636b547261636528293b0d0a202020207d0d0a2020202066696e616c6c790d0a202020207b0d0a2020202020202020696628707320213d206e756c6c290d0a20202020202020207b0d0a20202020202020202020202070732e636c6f736528293b0d0a20202020202020207d0d0a20202020202020200d0a2020202020202020696628636f6e3120213d206e756c6c290d0a20202020202020207b0d0a202020202020202020202020636f6e312e636c6f736528293b0d0a20202020202020207d0d0a202020207d0d0a7d2f2f20656e64207075626c696320766f696420696e7365727444420d0a2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a2a20757064617465444241646d696e2829204d6574686f640d0a2a20546869732077696c6c20616c6c6f77207468652061646d696e20746f207570646174650d0a2a20746865206e6f7465207461626c6520696e2074686520696e207468652044655269636869652044422e0d0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a7075626c696320766f696420757064617465444241646d696e2829207468726f77732053514c457863657074696f6e0d0a7b0d0a20202020436f6e6e656374696f6e20636f6e31203d206e756c6c3b0d0a20202020507265706172656453746174656d656e74207073203d206e756c6c3b0d0a202020200d0a20202020537472696e672073716c203d2022757064617465206e6f746520736574206e6f746573203d3f2c2054696d655f53746172746564203d203f2c204c6173745f55706461746564203d203f2c2054696d655f5375626d6974746564203d203f2c2054696d655f4163636570746564203d203f2c20436f6d6d656e74203d203f2c205375626d6974746564203d203f2c2054696d6552657669657765725f4163636570746564203d203f2c204e6f746552657669657765725f4163636570746564203d203f2c2070617469656e744944203d203f2c20557365724944203d203f205768657265204e6f74654944203d203f223b0d0a202020200d0a202020207472790d0a202020207b0d0a2020202020202020636f6e31203d2064622e64626328293b0d0a20202020202020207073203d20636f6e312e7072657061726553746174656d656e742873716c293b0d0a20202020202020200d0a20202020202020200d0a202020202020202070732e736574537472696e6728312c206765744e6f7465732829293b0d0a202020202020202070732e736574537472696e6728322c2067657454696d655f537461727465642829293b0d0a202020202020202070732e736574537472696e6728332c206765744c6173745f557064617465642829293b0d0a202020202020202070732e736574537472696e6728342c2067657454696d655f5375626d69747465642829293b0d0a202020202020202070732e736574537472696e6728352c2067657454696d655f41636365707465642829293b0d0a202020202020202070732e736574537472696e6728362c20676574436f6d6d656e742829293b0d0a202020202020202070732e736574537472696e6728372c206765745375626d69747465642829293b0d0a202020202020202070732e736574537472696e6728382c2067657454696d6552657669657765725f41636365707465642829293b0d0a202020202020202070732e736574537472696e6728392c206765744e6f746552657669657765725f41636365707465642829293b0d0a202020202020202070732e736574537472696e672831302c2067657450617469656e7449442829293b0d0a202020202020202070732e736574537472696e672831312c206765745573657249442829293b0d0a202020202020202070732e736574537472696e672831322c206765744e6f746549442829293b0d0a20202020202020200d0a20202020202020202f2f53797374656d2e6f75742e7072696e746c6e2873716c293b0d0a202020202020202020200d0a202020202020202020200d0a202020202020202020200d0a2020202020202020696e74206e203d2070732e6578656375746555706461746528293b0d0a202020202020202020200d0a20202020202020206966286e3d3d31290d0a20202020202020207b200d0a20202020202020202020202053797374656d2e6f75742e7072696e746c6e282241646d696e20557064617465205375636365737366756c21212122293b0d0a20202020202020207d0d0a2020202020202020656c73650d0a20202020202020207b0d0a20202020202020202020202053797374656d2e6f75742e7072696e746c6e282241646d696e20557064617465204661696c656421212122293b0d0a20202020202020202020200d0a20202020202020207d0d0a202020207d0d0a2020202063617463682853514c457863657074696f6e2065290d0a202020207b0d0a2020202020202020652e7072696e74537461636b547261636528293b0d0a202020207d0d0a2020202066696e616c6c790d0a202020207b0d0a2020202020202020696628707320213d206e756c6c290d0a20202020202020207b0d0a20202020202020202020202070732e636c6f736528293b0d0a20202020202020207d0d0a20202020202020200d0a2020202020202020696628636f6e3120213d206e756c6c290d0a20202020202020207b0d0a202020202020202020202020636f6e312e636c6f736528293b0d0a20202020202020207d0d0a202020207d0d0a7d2f2f656e6420757064617465444241646d696e0d0a2f2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a0d0a2a2064656c65746544422829204d6574686f640d0a2a20546869732064656c6574654442206d6574686f642077696c6c20676f20696e20746f2074686520207461626c6520696e207468652044656e746973742044422e0d0a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2f0d0a7075626c696320766f69642064656c65746544422829207468726f77732053514c457863657074696f6e0d0a7b0d0a2020202020200d0a20202020507265706172656453746174656d656e74207073203d206e756c6c3b0d0a20202020436f6e6e656374696f6e20636f6e31203d206e756c6c3b0d0a202020200d0a202020200d0a200d0a20202020537472696e672073716c203d202264656c6574652066726f6d206e6f7465207768657265204e6f74654944203d203f223b0d0a202020200d0a202020200d0a20202020202020207472790d0a20202020202020207b0d0a20202020202020202020636f6e31203d2064622e64626328293b0d0a202020202020202020207073203d20636f6e312e7072657061726553746174656d656e742873716c293b0d0a202020202020202020200d0a2020202020202020202070732e736574537472696e6728312c206765744e6f746549442829293b0d0a0d0a202020202020202020200d0a2020202020202020202053797374656d2e6f75742e7072696e746c6e2873716c293b0d0a202020202020202020200d0a202020202020202020200d0a202020202020202020200d0a2020202020202020202020696e74206e203d2070732e6578656375746555706461746528293b0d0a202020202020202020200d0a20202020202020202020206966286e3d3d31290d0a20202020202020202020207b200d0a20202020202020202020202020202053797374656d2e6f75742e7072696e746c6e282244656c657465205375636365737366756c21212122293b0d0a20202020202020202020207d0d0a2020202020202020202020656c73650d0a20202020202020202020207b0d0a20202020202020202020202020202053797374656d2e6f75742e7072696e746c6e282244656c657465204661696c656421212122293b0d0a20202020202020202020200d0a20202020202020202020207d0d0a2020202020202020202020202020202020200d0a20202020202020207d2f2f656e64207472790d0a202020202020202063617463682853514c457863657074696f6e2065290d0a20202020202020207b0d0a2020202020202020202020652e7072696e74537461636b547261636528293b0d0a20202020202020207d0d0a202020202020202066696e616c6c790d0a20202020202020207b0d0a2020202020202020202020207472790d0a2020202020202020202020207b202020200d0a20202020202020202020202020202020696628707320213d206e756c6c290d0a202020202020202020202020202020207b0d0a202020202020202020202020202020202020202070732e636c6f736528293b0d0a202020202020202020202020202020207d0d0a20202020202020202020202020202020696628636f6e3120213d206e756c6c290d0a202020202020202020202020202020207b0d0a2020202020202020202020202020202020202020636f6e312e636c6f736528293b0d0a202020202020202020202020202020207d0d0a2020202020202020202020207d0d0a20202020202020202020202063617463682853514c457863657074696f6e2073716c65290d0a2020202020202020202020207b0d0a2020202020202020202020202020202053797374656d2e6f75742e7072696e746c6e2873716c65293b0d0a2020202020202020202020207d0d0a20202020202020207d2f2f656e642066696e616c6c790d0a2020207d2f2f656e642064656c65746544420d0a7075626c69632073746174696320766f6964206d61696e28537472696e675b5d2061726773290d0a7b0d0a202f2a202020200d0a2f2f54657374696e672073656c656374444228537472696e6720756e290d0a20202020207472790d0a202020207b0d0a20202020202020204e6f7465206e203d206e6577204e6f746528293b0d0a20202020202020206e2e73656c656374444228223622293b0d0a20202020202020206e2e646973706c617928293b0d0a202020207d0d0a2020202063617463682853514c457863657074696f6e2065290d0a202020207b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2865293b0d0a202020207d0d0a20202020202a2f0d0a202020202f2a0d0a20202020202f2f54657374696e6720696e7365727444420d0a202020207472790d0a202020207b0d0a20202020202020204e6f7465206e203d206e6577204e6f746528293b0d0a20202020202020206e2e696e73657274444228227468697320697320612074657374222c2022323031372d30332d30332032303a33353a3336222c2022323031372d30332d30332032303a33353a3336222c2022323031372d30332d30332032303a33353a3336222c2022323031372d30332d30332032303a33353a3336222c2022636f6d6d656e742074657374222c2231222c2022323031372d30342d303320373a33353a3336222c2231222c2233222c22373322293b0d0a20202020202020206e2e646973706c617928293b0d0a202020207d0d0a2020202063617463682853514c457863657074696f6e2065290d0a202020207b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2865293b0d0a202020207d0d0a202020202a2f0d0a202020202f2a0d0a202020202f2f54657374696e6720757064617465444241646d696e0d0a202020207472790d0a202020207b0d0a20202020202020204e6f7465206e203d206e6577204e6f746528293b0d0a20202020202020206e2e73656c65637444422822343322293b0d0a20202020202020206e2e7365745375626d697474656428223022293b0d0a20202020202020206e2e757064617465444241646d696e28293b0d0a20202020202020206e2e646973706c617928293b0d0a202020207d0d0a2020202063617463682853514c457863657074696f6e2065290d0a202020207b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2865293b0d0a202020207d200d0a202020202a2f0d0a202020200d0a202020202f2f54657374696e672064656c65746544420d0a202020207472790d0a202020207b0d0a20202020202020204e6f7465206e203d206e6577204e6f746528293b0d0a20202020202020206e2e73656c65637444422822343322293b0d0a20202020202020206e2e646973706c617928293b0d0a20202020202020206e2e64656c657465444228293b0d0a202020207d0d0a2020202063617463682853514c457863657074696f6e2065290d0a202020207b0d0a202020202020202053797374656d2e6f75742e7072696e746c6e2865293b0d0a202020207d0d0a202020200d0a7d2f2f656e64206d61696e206d6574686f64200d0a202020200d0a7d2f2f20656e64207075626c696320636c617373204e6f74650d0a, '2017-03-30 19:35:48', 0),
(99, 1, 2, '3', 0x34, '2017-01-15 14:00:00', 6),
(114, 2, 1, 'BODY_CHECK', 0x66696c6574657374, '2017-04-10 04:00:00', 1),
(115, 1, 1, 'BODY_CHECK', 0x74657374, '2017-03-13 04:00:00', 1),
(116, 73, 1, 'BODY_CHECK', 0x74657374, '2017-03-19 04:00:00', 1),
(117, 73, 1, 'BODY_CHECK', 0x74657374, '2017-03-19 04:00:00', 1),
(118, 73, 3, 'BODY_CHECK', 0x74657374, '2017-03-19 04:00:00', 3),
(119, 73, 3, 'BODY_CHECK', 0x74657374, '2017-03-19 04:00:00', 3),
(120, 73, 3, 'BODY_CHECK', 0x74657374, '2017-04-19 04:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `GoalID` int(10) NOT NULL,
  `Description` text,
  `Objective` text,
  `Note` text,
  `Frequency` int(1) UNSIGNED NOT NULL,
  `isWeekly` tinyint(1) NOT NULL,
  `patientID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`GoalID`, `Description`, `Objective`, `Note`, `Frequency`, `isWeekly`, `patientID`) VALUES
(4, 'put on clothes', 'getting dressed', 'with assistance', 0, 1, 1),
(5, 'Shopping', 'buy food', 'needs to be complete', 1, 0, 2),
(11, '1', 'play games', 'by themself', 1, 1, 1),
(13, 'Read a book', 'The participant needs to read at least one chapter a day this goal is performed to better help them read while they are out in society.', 'Let them try to read by themselves at first and if they are having trouble help them understand each word that they are looking at.', 3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `NoteID` int(25) NOT NULL,
  `notes` longtext NOT NULL,
  `Time_Started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Last_Updated` timestamp NULL DEFAULT NULL,
  `Time_Submitted` timestamp NULL DEFAULT NULL,
  `Time_Accepted` timestamp NULL DEFAULT NULL,
  `Comment` longtext,
  `Submitted` int(11) DEFAULT NULL,
  `TimeReviewer_Accepted` varchar(45) DEFAULT NULL,
  `NoteReviewer_Accepted` varchar(45) DEFAULT NULL,
  `patientID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`NoteID`, `notes`, `Time_Started`, `Last_Updated`, `Time_Submitted`, `Time_Accepted`, `Comment`, `Submitted`, `TimeReviewer_Accepted`, `NoteReviewer_Accepted`, `patientID`, `UserID`) VALUES
(6, ' put on clothes 1 Balance Checkbook', '2017-02-23 21:04:36', NULL, '2016-09-26 23:55:03', '2016-09-28 22:05:21', 'test 3', 1, NULL, '1', 1, 73),
(7, ' Shopping was fun.', '2017-02-23 22:51:43', NULL, '2016-09-27 00:01:53', '2016-09-28 22:54:37', 'test 4', 0, NULL, '1', 2, 73),
(8, ' Read a book', '2017-02-23 22:51:53', NULL, '2016-09-27 00:06:54', '2016-09-27 00:12:55', 'test 5', 1, NULL, '1', 3, 73),
(12, ' put on clothes 1 Balance Checkbook\nblah', '2017-02-23 22:52:03', NULL, '2016-09-27 00:19:54', '2016-09-27 00:20:49', 'test 6', 1, NULL, '1', 1, 73),
(18, ' Read a book', '2017-02-23 22:56:48', NULL, '2016-09-28 22:56:31', NULL, '', 1, NULL, NULL, 3, 75),
(21, ' put on clothes 1 Balance Checkbook test 10-5', '2017-02-23 22:57:00', NULL, '2016-10-05 22:51:43', NULL, '', 1, NULL, NULL, 1, 73),
(23, ' Read a book multiple saved draft test 10-9-16', '2017-02-23 22:58:04', NULL, '2016-10-09 21:17:04', NULL, NULL, 0, NULL, NULL, 3, 73),
(24, ' Read a book multiple saved draft test submit', '2017-02-23 22:58:19', NULL, '2016-10-09 21:19:48', NULL, '', 1, NULL, NULL, 3, 73),
(25, ' Read a book multiple saved draft submit test 10-10-16', '2017-02-23 22:58:36', NULL, '2016-10-10 19:51:42', NULL, '', 1, NULL, NULL, 3, 73),
(26, ' Shopping Shopping 10-10-16', '2017-02-23 22:59:04', NULL, '2016-10-10 22:55:33', NULL, 'test', 1, NULL, NULL, 4, 75),
(27, ' Stop being lazy! good job! submit test 10-10-16', '2017-02-23 22:59:29', NULL, '2016-10-10 22:57:03', NULL, '', 1, NULL, NULL, 4, 75),
(28, ' Shopping test steven''s new note save 10-19-16 ', '2017-02-23 22:58:51', NULL, '2016-10-19 23:28:08', NULL, NULL, 0, NULL, NULL, 2, 73),
(29, 'test', '2017-02-23 22:59:15', NULL, '2016-10-19 23:34:51', NULL, 'test 10-19 you need to add the year''s', 0, NULL, NULL, 3, 73),
(40, 'dasdfasdfasdf', '2017-02-23 22:59:43', NULL, '2016-11-29 01:02:45', NULL, NULL, 0, NULL, NULL, 3, 75),
(41, ' Read a book: ', '2017-02-23 23:00:01', NULL, '2016-12-05 23:47:49', '2016-12-05 23:51:16', 'please check rupa\ncheck the spelling', 0, NULL, '1', 4, 75),
(42, ' Read a book this is a test', '2017-02-23 23:01:23', NULL, '2017-01-30 18:44:33', NULL, 'Please double check my spelling\n\nspelling is great but you forgot a date\n\ni added the date', 1, NULL, NULL, 4, 73);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` int(9) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Insurance` varchar(20) NOT NULL,
  `MedicaidNumber` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `Firstname`, `Lastname`, `Insurance`, `MedicaidNumber`) VALUES
(1, 'Triston', 'Gregoire', 'Medicaid', '1234567890123'),
(2, 'Nancy', 'Smith', 'Medicaid', '8889994445578'),
(3, 'Ty', 'Skipper', 'Medicaid', '7777'),
(4, 'Steven', 'Alcorn', 'Medicaid', '1234567891012'),
(73, 'John', 'Doe Rae Me', 'Medicaid', '1233');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(4) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `PIN` int(4) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Clearance` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`, `PIN`, `FirstName`, `LastName`, `Title`, `Clearance`) VALUES
(5, 'cmoon10', 'pass', 3124, 'Carl', 'Moon', 'Admin', '0'),
(73, 'Admin', 'password', 1234, 'John', 'Doe', 'Administrator', '0'),
(74, 'Reviewer', 'pass', 0, 'Triston', 'Gregoire', 'Reviewer', '1'),
(75, 'DCP', 'pass', 0, 'Lucy', 'Ricardio', 'DCP', '2'),
(77, 'Terminated', 'pass', 0, 'you''re ', 'fired', '', '4'),
(78, 'Auditor', 'pass', 0, 'David', 'Smith', 'Auditor', '3'),
(111, 'cmoon110', 'cmoon110', 3124, 'Carl', 'Moon II', 'Admin', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`FormID`),
  ADD UNIQUE KEY `FormID` (`FormID`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`GoalID`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`NoteID`),
  ADD KEY `ParticipantID` (`patientID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `medicaid` (`MedicaidNumber`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `FormID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `GoalID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `NoteID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;