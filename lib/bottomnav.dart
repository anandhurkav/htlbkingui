import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:htlbkingui/view.dart';
import 'container.dart';
import 'detailcontainer.dart';

class Bottomnav extends StatelessWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello @Anandhu Radhakrishnan AV',
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Find Your Favouriate Hotel',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      )
                    ],
                  ),
                  /////Dp
                  Container(
                    width: screensize.width * 0.155,
                    height: screensize.width * 0.14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExMVFRUWGBoXFxUVFRYYHRoaFRcYGBgYGBgYHSggGBolHRUWITEhJikrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAECB//EAEQQAAIBAgQCCAMGBAUDAgcAAAECEQADBBIhMQVBBhMiUWFxgZEyobEUQlLB0fAjYnLhM4KSwvEHorIk4hU0Q1NzdNL/xAAbAQABBQEBAAAAAAAAAAAAAAAEAAECAwUGB//EAD4RAAEDAgMFBgQDBwIHAAAAAAEAAhEDIQQxQQUSUWFxE4GRobHwIjLB0RRCUiMzNHKy4fGi0gY1Q2JzgpL/2gAMAwEAAhEDEQA/APPktVLbSuBcrtblW3VcMU+Wuk3qIPUlliSABqdBSunhmiPe4QhO8c6Fw6NozoVUzDR6iBz0mnaYaBleAq67/EdxI7h3eFKeIWrrKxNwBp0IkgE8wf6eQ76AdiHvfDD0XV09j4bD0DUxAkgS7gOQ6ccycjC2MOSY/ff9NalXDxXNjiWIZV+0XC4nKsErpGUMwWO0ZOvPMZ7qJXEijGVC6eS53E4RtANN/ivfT3l3LnJFc13dvUP1tTuhoZCnRZrtkit4a2YmuL13lSlLdYtTUiiorYJ2qZGy708lLcYuHsVH9lo8XxFa64U0lINYg/sxroYejeuWtNeWpSo7rEKMPXRw9E2761tr60kt1qCNqtdVUty6KjW6KaSphjIXZsUM1ijxfEUNduilJTbjChmsVwcPRPWVo3KeSl2dNCnD1r7PRBcVsOKbeKQpMJQ4sVo2KJzVrNS3ipdkxBth656ijS9RlqfeKiaTJXGWsrrNWUkuzakdSLUKCanFulCFUqRTDh7BQbp3Gij+Zpk+g+opXloq0ny+p3/T0obEv3afVbOwsP2uLDiLNE9+n36hNLuKJDE8v2BUl3Csz20gtG6gEkltSAB3ACh7VosypyGrD02qzJgmtIWuKrXLsqNZhSRMZWgQVMyDOwIhhQTWlsHWPfkupxFYV3OpkS3eDQNHFpl2twDug82kHNBcS4VZtqoJA2zBf6pPp+tVhX1pr0gv5rhGhb/6jDm5+PXnGgnwNLFtUZhWQ0k6+/NchtbF9vWsZDbTx4n7WyjWV3NdItbW1U1tKJWajBfWJ18ooG5JJPfUr1yDTNEJySV1h7gAg6VzfuTAFQXGpq2XDWkuFBcv3FzqrDsoDOUlfvsRDa6AEaHcM6G/EU4BdYIJFNaZTTngfSDMyribNhlOjRbVSJ0BGQCfl4EVL0i4UbDzH8NicpmRyMTz0YEHx8DSDk5Fs1XSTXKliQBJJ2FTuQa64bfFu6rsNAdf1qcqEIm5wXEKuYrpuQCCR6UtLnvq7XOLWQpbrFOmgB1PpuKpd9pYnvJNM0kpnWUZc1mc1ya0tTTSVOjGuyK0ldGolSEqJjXBY1Iy61KlgRTkpCULmNbDGpHtRUZWmSkrtXrovQ5rmlCW8pWNZlNdWrBNbcxShKSoNayus1ZSTyUHbw9TrYrtWroXaZRAUfUAanYb+ld4ZoLH4tZP0ArfWg5v5QCf8zhR9TW8apBKDSIJP75UBinTUDeC7DYVE0sK6qLFxgHpae470J30Y6sXc1yQdkYAEAsGBdgQdtOR32MUz4pxcspDXFMlgFtudHQQIXcbLvrBB7jVYweIKpP3iIB7o3P7/KoOHcKZ3ZlEhSCPNjA1mZ1B9+4VDdLmyef3VlcUW1BSp5w2RwaSBAPEyCeMyc0y4dYRlYMHNzTKEy5d+ebUnbQHvqdcAhiGIn8SyPVkLfSuOE8ZtW8MZzC810ZT1aHKASxYE9oEQBuN+6rZwrh1y5DIbd0HUshnUjdrbTHqKMaahzXKvFHJk95H0AVYv8PyECUaRIysDp5b/KoDZjzp5x91GI6soltkXKTlEMZOkSF58ht5U84DwwG01x0R1A0Qo8QeYmQCNdRH51I1IMEKvcVAvWqjFk044ldsZjGa2OQMkfU/WhUtEjMsMuuo8PDf/mpNqtdkVUWpY9g0+6T6Jb7MSFjyVBp8/nQdxNKYdJ3D2LJVlYAkacjGoPstJ0EgFWNad0lVirDxXjF57FuxdGUZUa2zJk0TOqkMR2gQzCR+GkqWSdt+VWvpvhA96xa/+0ttfRM7sD4QR71XiCQA4GIR+ymtqVHUnsDt4dCIm4OY5qrOkcwfET+YqNlmiuI24b/V/trm2gjWp0Xl7A4qO0cIzD4p9FkwIjvAP1QoBrAKc8J4QLpJZsqL8RET6An511ieH2knLft3FMahlzLqNSubfw1qRqNBhA9kSElZa0tk0ww+KwLHKcRBGk6b+Uz9Kf2ejquAbN+3cJEhZCk+W4O/fTdq1LsHKqZYrJoziOEe2YdSvnQM1YoAwjOF4M3rgtggTuTyHfV8wGBsWX6rqwTE53E5jsY8P1qmcIeFYDKSTqp0PZEgqfM1zg8defHKMzZbdppzCIll3I31/OgMRUcXEDRaeFpM3ZIuVeuNdGLOIXNbC2bg5gdlvAqNj4iqXxHoxiLQLsgKDdkMiO/vj0q5WcU4GYEH8S948Kb4LGrcWV8iPqCKZmIcOaarh2EyLLyFrQiolTWvQ+kXRNXBuYcBX3a1ybxTuPhVI+zkTIgjefpRragcJCCfSc1YrCKEvmTpU95YqELUkg1RwKypMlZSSQNs6VqDNd4dKLw9rtrPLX/SJ/KolwaCeCdtI1ajaYzcQPEx9UPisMU6wgE/xEtKAJJYEGABv2qaXcGVZbTFCWUPPMKdNRswJ2KkgjXaocRaudStxAJt3OuctEfeka+caa921B4R7k3LrtJI1Mk9q5D5QTyAdazWM343s5XaYzEGgCaQ+FrZjrkPROeFYEYm4LSsFynL2Vk776kTv31Y8NwX7PdvIEuH7qMYJIj4oTc5u7aQY3jX/SjDIt2X+KMwjbSdz70d0p4hN5iokFioM7meXoPlRZYC0MXLDGP7Q13AFxXnPHuj18ObioMjuVALhCG3PZeIBnT+1NejK43Ct1vUXDA3Qi5AGuvVkxtzpvh+IupJzESYiZHsdD/xROI6W3LblR1RQiCDbEbcspEHU1expaM0HUcKjy4iJuqLc6U3r15mc5szahgJ8ta9cwGKsjhRIhHAmInU6czqIql8MwWHxFxVulTJ++AfZgNParH004fatIFw8i2Egle2sfzrq3rNQcdSEgCF5xiOI2rlzKYBLAZgDBkxqNx86Z8Jw9q8WthpVWkleyBlzEmWAMgTB9I2FVccDe65ysgXNEyTMgnsgamAp3jcCdRV14G628Gbdq0Uyy1+7cAbNDrkOaABrIVdYCuZkUNVYyZBR+znOaSd2QbaWkwDfhy5A5rWMYhbT5DdzSezoerSJckjUHUSdZB7qW4+8GuaHc/BB59qZ5wTEn/lmmI6kdqW3yjXKBEaRESQNuQjfULeG8L628Lt9yUKEBgYYOhJEZdRObeDJ0O81AE2PD1Wjhi13aU90fGDbWNJHgRkTnzR/AcgvW2uaIrB20nRO1HqQB60zuP1t1rhmW11MxoAPlQFnDhNySF3JiT3TGk0ZgNS7HmYHkB+pI9KjWrdo6NAtbZuzBgmFzjL3W5DkPC57hrKzjFrVfX8qAUxpTXid2SJERI9opW/xDzo3Cj9mFzW3HH8c+P+3+hqR9KeKsItJoATJ/Edj6aVWwbmgBPeAJFWLieCHWHxOg8Y/X98qtXRfonp1l/UH4UH6iqTVAElDCiXGAvO1wl49ohm8ySfWmOA4nibSpbU9XlfMrbQT5AmIJ8Na9jw/RrDGDlMCNNp8+/WiuJdHMPcUKbY02I0I8iOVQNfkrvw3NV8u+Mt9VdI61QCrrEFoiGnbNtM7+tVK2lWixwk4XFBA56syQe6f2KS49f4tw97sdP6jtV2GeTIQ2IpgEFE8FZZa2yjt7HmCNoNaS4mBLMxzG4dW3+EaAT4k+9K2NRYu0HADSY8e+mqUHOdvAq2limtphjhkiMDxW917XLbfwyYVWkzPd3azV+4bfLQY6u7ExyYfnVT6M8OzurEQi7d0irjxDCnq5HxIcwPh3VRWptbAGeqvob9UFx7k2sYjN4HupfxzgQxEvbhb3MbB/0b61BhMXmAYb7Gm9gzrzqpjy0yFJzARBXl19CCQwII0IO4NRla9E6TcGGJQ3FWL6jWPvqOX9VUO1hu+tJlQOEoB7Sx0IbJW6O6msqcpbyTYcgUTh7edoHPs/Ut8gaU4dHZgq7k6etWcYHYKSFXsg/iP3299P8AVQuIO4Pfu/3R+yMN29YOdkDHUm5/+Wgu6hqF4zhX+zsC+VSYYyJKn4gCRpOm3KQaAtBcqAfCSWXxyqFX/wAFFD9Ngx0B0RBprGaZbTmYy+9MLVgqbYAJCAA6GIk7nlVFAZd609r1S7tRoSwddfovReitj7Nh79xlC3dVkmMu5O+g1qmcYuvdPxSxaF10EnfTlVz4tfa5YYo2VWbNcLdkkSTkUNEnsjUeNef8X4sj3AUU5VM5diQG2J9KKbcrm32EJrwxLawrL1jTGYzl2OujDQ+vKg+kGBzMGzjcqyDdYCsp8QQwg/ymp+H5wpiIUTojGQObEAwY5NEUDjb+ZjMHWZ7uQEgwTA133qZMJBsozhdvKMwB8CNNO80c3EGU5w2Xlm+Wh86UW7zMy2bQJuMcoEaa7zNMl4aLTOW/iNJhQYJ5aHuJzbe/dGbJEwubF0ZzeNtS4MK0SSd501J235GOdG8UuWhhTahVa8U6zKActv4QEI5LkMLtq0b1X3uMCEEh2kuV2UMSzBSNgQQPIetCm/myp3lm17tAq+OgHuaDfVO9ZHbOpurOIE6eJIieWvgi+NWSpUzmWMqnlA1EabRR/D1K2lnaS4H9UDfxyil2Jx+q2SOsBIV/AsYEHkRv/lNMcfbZ7TZFO+WQDoM2VmPcNx60qtcPYABHp7uui2fss4bEvqF+8IgHWSdZ1gATJ8oXK3A8GZA18CRz/SmGF7NtSfM+utKbVs9UFylcrQZjWIIiOROvpTsrAC8tqrDd1knU+nvyWgaoqYo0x+QCerjPo3zSHiThrpjUafSaie1XZgsT3mt3LgrTpjdaAuExtTta9SpxJjpp5Kv3SXxAXc5hHhJ/vXoVnpHasplys5TQ5ROoqvYHB/xw7HOFgm60S2aYiBrGmp76tCdGcJc7bIjd3WrnA8FBIA9qz3EFyOaxzRCJ4H0nsYmQgMgSVgAx5HWlPEenqo2RUUa/Ezxt3KAWPsKM4NYwlq85sJZRoyFlCpMEEiAO+Pbwph1ljrBmbKW0DIxAzD7pjn51Gb8ldDiLpaLxxVpLwKkowllmMpJBBG8zFVbi6hLhAbMDrOUrzIIIPcQddjoa9JutbhlGzCCRvuNZO50rznpTbK4hlJkhUBP+Qf8APrRGFPxRy+qBxjQGb2sjzCX2zNc3Vrm3pUhNHrMVj6NYzKht+MirhhxIk92tefcNuwwNejcOXsis6u2HytfCVd6lHCyQ8StLYYNb0U7juP7mmnDcaGFLuk1kwfpSzheIKnvoZ3w3RDmzdXdTGoqu9KuFR/6hB2T/AIgHI/i8jTvBEsB3UVciCGgqQQwPMHerab9wyqHs3rLzL7TWUHxPrLd17a2HZVYgNvI5Gso3tG8UL2buHkpej+E1D82ORfX4j6CfY0x4riAHFtfhQBAB4b/Wi+F4i0ll3Ug5AUU+YE+pJ+VK8JxC0zAFhP6H61n1nl1/caLrdl0W06hbpTEdXO+Y+W70AVY40xuOytOt5ba68iLQ/I07xONRFli2pB7I5ZdN+RzN5RNKuk18Nil6uCBdB071W2R6zNG3uH9YUtzoEQk/yrE/vxq2m6IngVl4sdpRc8ZuePQ/UptxfEvbtKVzNChdcxB/qI/PnHjIJxqZ/wDDRpC6qOSzJOxkyDMjaDIoniWOYJI0AZmgzyED0/SlFrjIAzsiuBBncjmR2+R566TPdRFMkhYtVoDkyxK23UQSh7P8SB5GQxH9W9QJgbrXIVkIkCZGyAEvlHxKARpJJ13qfCn7RChGU6HY6rIIbtSMpkbGdd+99wfhq2QzZnd5YlVX+U8jsQPHlpuBTlwGaiGmxWuAcGGGY4i7c7ao0Kw79QVbm0wYFBYVm/iXyIhSfrkWecD5kU0x93I2YnIDpDZWhhMR3RB15CkuP4sCnVAKBmiRrJ3nXSAD89Yihaj99u6O/oq3xNkNh7TbAS5IUDvYwD7tzpdi2y3CtuWIOVTGs7Agecn2o61iurl/wghSe+NT/VG3nVbwOPZb3X5GdbXagErJPZHaXURmzeSmq2NLiSuh2fGDw/auzdcdNCfXvTUWjav2ly5mtg3LuUyMzqVtgk8+QHnVm6O8XgWkdZNy0Ce6eY+vvVEs8czWcRcBi893MYUmFS2er7Z0PaLmN+zNWngAK2bD7lUQz5jn70qgLc/eq1MEBiaD2zcyfQCZ6eakxTZMVbtdoBkYMWOpKRBPicm/jTPFXOwx7hp58qA4iwu41LoERbHuQwHy+lT40RbPjFJty1vvNRovNPD1qp+YT4tb9ykbORUXWE0ZctTUS4U7xWrZcXBPRTJfbKF7tdOfnpr/AGFM1x11lZbcmBpHiYpdaTvqXhuN6q/DfCZ9jpPoQDQOKpgQ4LSw1QkFvDJB8OwH2wBrdvEnKzDrLdtBqNWXtuPmKsmI4bcS0tr7OwFxgDL2g4LHS5lUmYIzSDOk02tYYntIVE66DXX970ULOTtuRI5/3qokFENBAz9+KW2nZEUmMwST3SFn2mqTirrXHa4xlmMmrTfu9at4qeyFYad8aKPH986qoq/BgAE80HjWlzmjkoyldBaNsYMnWttZgxRgMoIsDVBg3h1nvH1r1TCbDlpXmN1lWDzkR5zVm6Lg5XuXGLMxnUkwu4A7pmf+KzdoVxTbIuVqYTCPbRdVdYEgC2f2AGvcE8x+FWSzNm10VZj1Y7+Q96TXSqPMADu/5obpnxO9aOHa3razst6FkgMFyH+UaNrVf4nxoRrr4UFRc6owOOs914/v0IU3PvB0Vts9KLCSmcFu4Hak/EelDM3VodTz7u4aVRLnEGY6ALRWEw92M6mH3UH6mjG0ybKkVL2XqdgAKoY6gCfONayouH8KZrSM79oqCfOsqG4UXKpJtEWVtAgGSxk8yT+Un2ofDWOqDOSJAhdZ7Tc/TX3qHE4liokbnfz5D5UPxK6VFtOZ7Z822+VTps33gLSxFX8Ls5z/AMzz/UfsosZlF6wE0OdWMc9pnvn8qe4GMz6/cOvhn/SKT4jCHrMMRAkEnvLTpGuui93KjsE0OwnaV9V1H1mnefit7uo0cOXYMb3Jw72z4yV3xG4wTMVzKAd+YDbewj3pTcGchDJmIVeYJkeskyavFrBJds3LbiALrBYMEAD/AN1UvjZS3dZEnRiAT4c9BzNXUnCFzmJBY43tZPeizLbd3kSUS2oE9oABSBOurfXuqxYW8ZLSSyINWEmXGYz5dlY/lFV7gFuDh7jKMwMhQRGTqixLd5g2vQnSibuJZcDcdj27xn/U2gHsaDqv7R0aSB4n6AFDPqTAGQ/yfMlLuPdcHFt7gKOS+hmB8TE9w+LTaRQeDQu87FjlUclB0A8AKGtGBH3j8XOAIhdfIH0XxouzcygtMH4V1jVgflEk+HjFWOyDf7KWGodq8NNhmeiF6RYlZ6m3qAZJ7z+/3tRScLuW8L/DJV2Ha0B3Hj+Ed3MnwoLh+GBY3X1C666TGw8JMeQmm+Hx+fPiGJyKcttTsxUkr4QCSxI5x+GpAaBdLUIkF40sBYyRDWjmT4WMwkPGLaWLQsIgAy5rnM5zb017wo8pdjVw4OoFtB/Kv/iK84xmLN247MdIPzmT616PgLghRtAGvfpSrHKfeSN2M0Cm9rdI9TJ6TlyUDnLfbuH/APKx+fvRKsGA9fyrePtdl2G5Kj2Tb6U06P4LPhizDXMV9kU/nUWvDajeQ+ipxdSNnVjxqOH+uPRsJDmgkU4weHlRpSw8ObrSI05VZcFaha0Hv3QuP3iUqv4QA61W+P4QluycpgEH5flVzxdsbny96rnGyoZASATmjUbCPz/OqH1A5nNFYUuLwADeRlr70VXs9JsTYOUPIHqPOnvC7+LxgDXnKWO5ZUv4A7hfH2pTY4XZz5rhJE/CDM++mtNuK8XL2zbtfw+RYkSB+FQJg+P7AzzNmjvW3SwWINy0xzt6p4uJVWUns4dFOSFGVmQkNrO2kgAEtrFB4vhgtgPmWW1NsntpOoBB3ERr8qU28S3ZBJOQQq7C2BpMDQNGmYydPWsJJ21J58vExzqTKnZ2atQbG7Vo7cwBoO/jbrYm1oACYXcbAhQPM6H+9LsVjWiWYwNdtflvW8TpFLsY+3721/L6d9Rc9zjcrRZgsPhmzTYARrEmepv5od8bDIzc39qs/BOMdXcFhzBK9g98d3pVRviRPNdfTnR3DrqsAjaMplG7jVdWmHsIKErMNcGmTfMT4Ed+nPOyv1+6NnOhBDKI2PfVHxlpb1y4ti9bZUMCSEDSJlGbssBsRMg941IXSDEX7hFqQLf3lD6t5kgdnuHv4CBwIAULGkAjl/RMmqaGGdTbO9c6WgdfsPFc9Ww1YP3Nw28+/JOsHwoLL3ChAmFV1cs0aTlJAAmTPdHOijcYajeueGYc5BmMzJGkaE6aeVMrVgCtSi0hnxGSVm1XCnUjgY7x70XFvpnfUBer209qypGwqk1uq9wor8a1LMPgwxGa4pjZQw25/Kk+PvZ7hfl9AKZWcN1aMxnMRlH+bf5T70m4w+SyVG76eg1P5D1p8MIBf3Izbz+1rMwwyaJPePoB5qyWcMt02bsMGtplA+6SyHUMN9CNDqKV9YUuv3gZvy/SnXC7h6oAKPhTtAMJ0mT92YMcjAGnOk/H0yujgENBVj3yZHyJ+VDzfuW8QRTMj8x4ZRGnIKyWeIi1YGkse1HfmjX2AqsYnAm9czQwOU3NATrmaPTs/I054WwcMHPZgkNBiLAtqw8CQzH1qTFY61btMyb5+rXQ/CFE6+IW5/rPfSFYtdugXXE4t/7Z06H35oPFcRVLrqAQLdpLSjQ6lRJ88oHtXGPxwKZZlUbKN91UDTv1zHyjvpRZYvdJnts067d5J8AB8q3cYEiPhWYn5sfEn6Acqm2mGDnb36oAFdWTG9R4i8XKquv4flJPtPtUWKvHRVEs3Lf/AJmu7FvKMonMRJIEkc2A7+z8yKYD8y6LZ2H3WS4Z3P0HWPMicim1vDLcRbAOZJGdh7lie7fbmfbvjTLbtIMpW1DJZXvykZ7jDczJjvOp3NT4O32QighIAI3Ov3ZG+u59OWoHSti0L91AFA8fvR66elJp/KjMS1u7251s3Sf1O4x+VvLratWLOcOdhlb3I7I94r0vCWOzJ5gH5VSrvDcthmkyNSvI5e1+lW3hl89kTIgfSmquBWjsZv7J27y+vdz7yu+K3yqmNe1/sqw9EMR/6Rgd+saf9CVWONKygnkTI9q64RxcWbUu0Lm38WCgD5UuymoAeR8kDig6psxwbf8Aaut1qO+6t14W7am5cdUXvY/Id58BVO4v0y1Iw6EqPvsCPUA7eE+fmt47xRr8sez2soXfZio9TE+tQBBlq51cmwyUsJsFgAdVMuiYtA5cyNfRdHjeKuhSzgAkgaGFgFi0bkxI3oS66FkbYKGUTuxJVmJEnWeQreKtxbtkfiO3jNH9H4IgwoLHO3PTWJGsacqpLoaStI0gxwaBkJ5eA8uqE6wrqbTg8swAn0zSPai+HYPPzOkEwJJJIBInSe0u+mp7oqPHXM1wqoMLooOpk8ye8aU84HbAkwWKQSACRADFjoCYzdWTppPhTBXve8MLv0+s8OP1TCzwMW7JcAgqCxyrn1A0lyNI1JIGnpqmxbguWmZCyYjWO0YHewJqydIelKXLZS2fiILAQFHYChV0EDVjHjNUy8Z079z3Dn68qsq7sw1U7MbXLTVrgzJA3rGLHgDGgBuB58vdB7R2O36+tBXTmu+GQwP6jH5VK5ztHIfQUyw/A7txLmItoSlsBTGsSM095AG5G01UEdUcAAXEASM7XVTW+VZ+zOVmBXv2Nd28Qu6nRuX75ihMbdAu3ROWcp/7AGpfZcjYSD60QKcienoudfjTTfunQuHSDHW+vdCtg4ooUZgz+SFvmViiMBiQ5JFtrag6yNSOcKNvOkfCMDcPa7SWye+M3kv502NzKwjbaqnNAstjD4irUaHvsOER5zPfZWvC4yxmGdTliOyflUePxVuZtAgeNIrV0A6nQ7VLckarqO6n7V0Qot2VhA7fDeuXjEItsa07VlDfaR3VqoSeKJ/C0P0hOr+D6xcw9PWqF0peGyclDD12/WvU7wK2zlWWC9lRA1jQdw1rzrA8CbF33TPlCrmLEZtiNIkamT7U9GrGeQXJdo2rUxGJOhgdJt5NA56J3hCy2xoNkIPfNtdN+RB96Ex1wPhUuEjMtxrbeBzxJ9DHkBR3F7YsbzkthFLHWTos/OlWCvKcytJRiuiwCYY6yQQNABsdhUBe66F1VrqbHA5gmNbgkW8s+eiIsY8WkIbQZLwj8RuPYBPnp7CaWYjF57cR94sBroSTJ8yI96KxOE61IJ1nQ66Ge74u7l3UfY4RctWswts7a9rKexy7I74jtfSraTGt+LVcdtWm0Yp25kb95z4Te4SK1bKgr94xm8Bvl+hPkBU9qwzHKoJJ0ga0Rw/A5yRtHPxqwniNjCqUs9q40KWO/wB2YPISCZ3iNNKZzpKWFwBLRVq2ZztMfTzOQBlLcLwbqAbribpytvoAw7LGNd4GXnMa8uMPhe0qnQjeORnbz9THiRNXK9xBUwa57eW6xJU5gSW1AuHn2QRpqNYEdqaij6r5z5moEldRhsKawiCG68xoOV7u1zm5gMrqBIy8h2fPb+/pQ3EeGQiMdlM+Zo09plHr+n5130tcpbQcv7U9UAVIbksapiH1WN3zMCPfp0ASPDa2rpiYDNH9MGPYVJgXGW2Qdwv0rno0/YcmBKtvtzGvhXPC17KT8QXKfNNDv5VB2vvRb+xTG8OU+n3TrpPeQ2bSqwLdkQP6CDPrVZRdCDqkwR56T+++iuJOYPgf1oHCXvi0kRqKk4lxlaFCgzDt7NpJBJN+Jue7l5qG9paR9wsk/wDd+oqyYKxaRENwo8oDlJmSRIEKQRrvp4Ac6qN69/AvgHRSyj30+ophh7w0LbBYHialldDmKnwTHwiY6kZ93uxDDD5bmJtI+TqwWZiSAAcrAGW0gGd9+dSXMYoa63Z1YwigRl1ygQANfCBrsIFR9HrpfGW5GnaAUGDojHfv27ttxUV6TcctOfMCwMzud51mZqRH7MIdwbUxLhwaO7u7hqt4K1BHfufM0SLxGqySDoQY18DvNScNwFy8StpC7akqsTC7/X51xj7Do7W3GV1OXLIMHnqDHh71Xc3WnTLQNwETnFpjp/ZR4jENcOZ2LRu5mT760FibnLmd/wAhU11oHl9e/wBP3tUGGt5jNMpwI3RYKW0mVZNetf8ATPDlcFmO9xy3oFRY91PvXld2C6py1J8l/vFe4dG8N1eGspEEIpPm4zt82NE4US+eCwv+Iagbh20+LvIAz5kLwT/qrwAYbFs9vRLktl2ymSCB3jnHKqzwW5LdXmCzqPPTTzq8/wDVy0z4y8CSerVGQcgDbVmAHiZNVXgVjrw1oEZ8pKAqpzHuJI0jepvcIIjVZeGova9lR7s273URJEyPH/KLQsrZCcwk5TXV3egb+NdTkdSrLuDUB4sTrFUbjitgY2gG2dIzGfuydWWB7LbVN1TpqpzjupMmODUwwnEIqJaQjKWJpu171P8Aaz+E+1ZRH21O6sqMckTI/WrljbsW7hG+Vo84NJOhdiOvu/jePRQG/wB3yptjWGRp2ikdviS2rRsDUkQDmAMvI+EwdNO+qWgwYXDYZhqYJ1Nh+J1QDMZATNzxKB6TXGu2Wu/ca5AHeF1zHzP0pdwctFtlEspMATJ0Og+XtVl4wLRsDDhhnAWAYEkgE76TJ796Q3Ey4Y2wpS4t1SzNIZhr/hggQFjfUmZ0AFEUgd3hdaLa872+0nRrTb4REd0dbnrD/g7RdJfLIJ7LDMumnVkQZEnLFPsVgLdvC27iqLd5yxzWboUZBpBGi8uak+NBcHbC9VasXbLu1y6Ge4FbQaACQNhPfTf/AKnrbQIqGcigAcxodZ3Ow96J3SGSsjE7tSuWMuAYHOM/PyhVG/fc2XCql1ie0Sx61QNQQinXffnzFccLwNqw32nEEyACEgSh10mYY7cv1AGHw95lnOQ0eAIHmNe7SaW8WxDG3lZixBIJPnQ2sDvW9hMMDS36os2d0ZC1pzzzi3O5AIZ2ce98G65knQDSAo0AAGgqYCg+EpFpaNQajzqJzXRYcRTb0Ca4Vjm15RQ3TbFDq1HOe+u7DkEmN2JHvSvpAmcjMANKg275XFuIJLuZSnhmLlQo+HUMO+Wn20FOcFiVSV31JkxrmhjsTzJ/PWkZdVhV/cURYsk6fz/WD+dTeAuh2ZUmm2OYPX/CMxhlGPeZ+dAYNu0fI0feEofb50qBKkHwP0pgtKq6HBySnEfw7w/EZ+f9q9L6KdExetfaLt0WrYMAlQSe8ySAvIc9jXl1hcz5eRYD3aK9vvYZbljB2THVZGuOubKCRcRCWPcvWsxossE5e7BcuzFVG09/eiSGzAMAb7jE2nIDrNs1WLmCtDiHU2mdkEg3CYMwwaCgECRHjz0pMkdfdywZYREQAoGggnSWPM+dWLjmMRLlpbK2uxbRmu21AJuNaCMGK7GQWynnuDSXgWFvXcSTatl3hWCwveJZhtEnnppVRjII+iXWqvNoHzHUTJOgkZzMFW/g3B7uGZcRcZbfV5SQCCQWYLDDZdWkzsAYkiAZ0l4XYsWMR/CCOHRbVxnZmuKT2nALZRop2AHKoONDEOzHFsmGstBe2rBrl3ISYRJYzJOpIAmfOo8SxS3brMqLbQR2FJK6chPL5UxIaIjxzVmHFXEVBUL+E7ny2IIbIN4O8CfjG6YsSgrhn8hRllMq1BYXM08htXWNcwFHxHQeZqtbQsJXFnXM/wCLQeS7/P6V6b0H6X5stjENB+G3cY79yO3JuQb31384RQNBsAAPSpbZ3qTHlhkIXFYKniqW5U6gjMHiPqMjqi+nmJW9jr0TDLk1ETkXIfoaj/6bcAKu+IuW4ydi2Sd5ALN7QP8AMaVW0LYhVG5iPUx+dem4OyttFRdlEfqT4k6+tQqVDfmuc2y5mHw7KDfmiB/KMz3nK/FLekPRu1iVMjK/JhvXlXGOjOIw5MoWX8Siflyr2wXK4ukHQifOosrOZkuep4h7Bu6LwjCroa4+1spgVeeluDt/aFCKBIBMetJMXwxAQYgzRLaodcjNdPh8PVrYdtSmY/yk3/xRxplrVWY4JTrlFZS7Rn6Ub+AxOlXyTnpdiG6lFXRnu21B8Sf7VriGAxDLkt3UuAEMOuRQ0wRBuW1GbQzqO6ieJWgxtTst5W9QrR84o20dPHc+dBCoQAAuLpYipSaCwxfz/tpzukHD+I27HY4hg7wBOl3D3AfXePzqz4fiOAuJlw2OBDHtWsUpBJ7hc0cehik/SPD57UdxFK24VZKKrWwWj4hofca0ZRxPw5IotqYlnbOfJki/L3wXp3AeH3TdRmQ5U+BkYOB4dnKf+00j6aYRRdIZusOjAmUYRrlZR8QiRy3qk4a9fwRz4TFXLcfcPaHtt7g0xxPTnFX0y4myl1DAFxVBbzI/JQKvLmOEZKLKOIb8YaTzF/Rd4wZSzW5ZDl7Q5MyjNm3ghp08KpXErkaVZLXGrbMf4gVspABDoTHImZ1GmhnaoOrw94GQ1p/GWWT/ADASBM6tm8xVO6A6Vs0cYfwm47Sb656jO06TPkJeH/Av9NT4d4g91RomXTuEe1bU6VQV1LCC0AZQmw4lYB1bLHI6fKqn0l4uHuZbbBh4c6c5QUIIzf1Ca1g1EqAAs/hEU7Q1plYJ2MXEgVIE8L5DmBqqvc4biRb64WXCIMzM3Z0nWAdT7U/wWLC5W+68EeqLH0q9GwrWzbYSrKVI7wwgj51ReK8PFlUtyxKEJmgQeySCo5GInU61Hte0EH2ELsPEgValMHmO6QT4fRdPdUAgnWTpz7/zpWzyCCPiWKslnowLwNw3CMxgqFB2VYMzMxFIcfa6u61s65Gyz35W0PtFIFpyW23Gsq130NWyD4x76pRb4Nfs9Vdu22RGuIAWgGZmCsyNjuKuOG40OrWxcQOivnXUhlJMnKRIIPcQROsGpunT5sPh377ts+6MarmHugN9as7RzxvHmsnZBFShuvGTuYuOYIPEWOSvXFOkdlsN9nw1jLn+Ke0c2kFcpJuXCYOY6zGhqq4axfw7HLduWCQs9XmRmEEjXeO0aY9B0F7FFj8Fu2WQfickLm9Ax9xR/TXEhbqKN1tLPmzNlHyJ9ai6s4uhEUKeHbX7BrPhuSSSZOc309fWu37rEkksSebMWY+LMdTWMIAUbmsQQCzfvwqXDJ987nl3Uy3GjT3ClUBRQ1oyzPyTsr5nc+2nqa6xdwxA3OgHia6NsKAg2HzPM0lImTA09hdrtXXKa45VmwikpFOujPCpuHENsDFsd5gSfSSB4z3VaC9KeAP/AAQO4sPofzpiTQ7jded7WqPfjKm9oSB00+6kBrRNcBq5LVGVnKo9IhOIJ8vzpVjTqBRuNfNec+Me1A3jLCiW5L0PA0+zwjG8h90WK1XKtpW6ktBMeP4nJazxJVlI8+U+sUxwl1XRXXZgCPUTQPEsL1tu4vgQPNYf6x7Us6KY0rOHudkqxyz75fz9TQ8Sy2Y9F50cOXYWWi7Ln/2APkAPAlPsesgCkPEMUE560dxS5cDHIMwjUd1LbPBhcGe7cjwmiKbAGgq7CsloYbc0rxeJlTPOi7a/wF8BQHEbaLcKoZWYFNbJ7MeFSdkuswgFwLCICDxyg5WIVhtqJpbYvtaY9WzLyIB0I7obSmWIcBSpNLGUE07VVjqNOofiAJ8/urAMSXAOmwmPAVMhpZwe+PhNNslQIgrRw0dmI6Lknep+ELNxR4j5GoGFGdH1/iz3Cov+UqGKd2dJ7uR9FaRVS6akAjaey2+4JC7Tyy7+NW0Gqx06szZzidBrtHZBifVvrVNH5wuG2U/cxLehHl/ZMOjeILIwPIj6f2qr9LLBGIc8mysP8wE/MGrF0ZYZA34kX8v1NL+mSQ6t/KB6jN/anaYet8s3dsvH62z5N/2ofjdzPw6w34LiT/kVx+lV7CjNA/EdfKnKMbmAvINTbZHj+qF/JjSOw0N/Tlq+mLHqUsGwU6lRmm+fOD6Snli8bZDISpggRB0O8giCPOhnuF3LEliDJY8zt9AAByArkvoT6CuWuZQAN+X60ltENnej3wU2eTB2X6/2opbk0FZTYUQ7a5F0ZufcOZpK5pgSusPqxufdSUTz++f9vvXdb0AAGw0FaWmlWAR79/4UhFcOda3m/QUPcbWkk8wrX0au9hh+Fj9P7U5mq30QeTcXvVT8/wC9WaKHePiK4DbLYxrzxg/6R9ZWhUOKfKrHuFTgUq6S4jJYbvOg9aiATZZ1Nm+8N4kBVXPMt3yaGUySalGi1FYFFr0mAIAU81lc1lJTVivfA/k3+6q4f8NW5htDzGq7GsrKGbl4fVcrsX5a3UejkxxjnXU7d9VGxdYs0sT6mtVlHj5SqKHz01xc/wAb1p7Y2WsrKi/ILewf7x/U+qXY4b1Fa2rdZUW5KVX96Vxg/wDE9aslrasrKT9Fds/J3VbfY0x6Pbn991arKpqfKm2l/CVf5T9FYhSTpn/8q/mv/lWVlVU/nC4PCfvm9UF0S+G1/wDj/Ku+m+1vyb/bW6yrP+ouqxH/ADWj/wCMej0l6O7Yz/8AXb6Uos/Ef8v0rdZVo+Z3d6JYb+Kq9R/SUYfu+VRt8foPpWVlOFrlFYbn5VmC+J/6V+tZWVEq7VvX6FFHast71lZSCtXR2oa/WVlMFB6fdEf8Rv6PzFWs1lZVT81xO3v4ofyj1ctCq701/wANP6x9K1WU1P5ggMD/ABLOqrx+GuLO1brKIXoJ+YdFusrKymU1/9k='),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              SizedBox(
                height: screensize.width * 0.03,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    hintText: 'Search For Hotel',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: screensize.width * 0.02,
              ),
              Text(
                'Popular Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: screensize.width * 0.02,
              ),
              Row(
                children: [
                  // First item container
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: screensize.width * 0.435,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          First_containers(
                              imagepath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvw7-S6N_Fb7xpuJRTNse_G6JgKsVEb5Jb_inyeI2R&s',
                              title: 'Crown Plazza',
                              description: 'Five',
                              amount: '180',
                              rating: '4.5'),
                          First_containers(
                              imagepath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvw7-S6N_Fb7xpuJRTNse_G6JgKsVEb5Jb_inyeI2R&s',
                              title: 'Grand Hyatt',
                              description: 'Five',
                              amount: '190',
                              rating: '4.8'),
                          First_containers(
                              imagepath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvw7-S6N_Fb7xpuJRTNse_G6JgKsVEb5Jb_inyeI2R&s',
                              title: 'Trident',
                              description: 'Five',
                              amount: '140',
                              rating: '3.9'),
                          First_containers(
                              imagepath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvw7-S6N_Fb7xpuJRTNse_G6JgKsVEb5Jb_inyeI2R&s',
                              title: 'Ramada Resort',
                              description: 'Five',
                              amount: '200',
                              rating: '4.7'),
                          First_containers(
                              imagepath:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvw7-S6N_Fb7xpuJRTNse_G6JgKsVEb5Jb_inyeI2R&s',
                              title: 'Radisson Blu',
                              description: 'Five',
                              amount: '150',
                              rating: '4.2'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screensize.width * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotel Packages',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return viewtab();
                        }));
                      },
                      child: Text(
                        'view all',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: screensize.width * 0.01,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      // second containers
                      Second_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Z39RMUaNsR_f-UFxQLkOLkA64qH-SjiE9NVNHmo4P-IxHG2X-IX0acHTRRsZ3-R4ThM&usqp=CAU',
                          title: 'Crown Plazza',
                          amount: '180'),
                      Second_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Z39RMUaNsR_f-UFxQLkOLkA64qH-SjiE9NVNHmo4P-IxHG2X-IX0acHTRRsZ3-R4ThM&usqp=CAU',
                          title: 'Grand Hyatt',
                          amount: '190'),
                      Second_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Z39RMUaNsR_f-UFxQLkOLkA64qH-SjiE9NVNHmo4P-IxHG2X-IX0acHTRRsZ3-R4ThM&usqp=CAU',
                          title: 'Trident',
                          amount: '140'),
                      Second_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Z39RMUaNsR_f-UFxQLkOLkA64qH-SjiE9NVNHmo4P-IxHG2X-IX0acHTRRsZ3-R4ThM&usqp=CAU',
                          title: 'Ramada Resort',
                          amount: '200'),
                      Second_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Z39RMUaNsR_f-UFxQLkOLkA64qH-SjiE9NVNHmo4P-IxHG2X-IX0acHTRRsZ3-R4ThM&usqp=CAU',
                          title: 'Radisson Blu',
                          amount: '150'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
