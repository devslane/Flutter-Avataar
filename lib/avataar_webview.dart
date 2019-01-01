import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AvataarWebview extends StatefulWidget {
  AvataarWebview(this.url);
  final String url;
  _AvataarWebviewState createState() => new _AvataarWebviewState();
}

class _AvataarWebviewState extends State<AvataarWebview> {
  final String baseUrl = 'https://avataaars.io/?';
  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // WebViewController webViewController = new WebViewController();
    Key key = new Key(widget.url);
    print('URLLLLLLLLLLLLLL' + baseUrl + widget.url);
    return new Container(
      color: Colors.transparent,
      width: 250,
      height: 280,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: new WebView(
        key: key,
        initialUrl: Uri.dataFromString("""<html>
<body>

<svg
        width="264px"
        height="280px"
        viewBox="0 0 264 280"
        version="1.1"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:link="http://www.w3.org/1999/xlink">
        <desc>Created by devslane.com</desc>
        <defs>
          <circle id="path-1" cx="120" cy="120" r="120" />
          <path
            d="M12,160 C12,226.27417 65.72583,280 132,280 C198.27417,280 252,226.27417 252,160 L264,160 L264,-1.42108547e-14 L-3.19744231e-14,-1.42108547e-14 L-3.19744231e-14,160 L12,160 Z"
            id="path-3"
          />
          <path
            d="M124,144.610951 L124,163 L128,163 L128,163 C167.764502,163 200,195.235498 200,235 L200,244 L0,244 L0,235 C-4.86974701e-15,195.235498 32.235498,163 72,163 L72,163 L76,163 L76,144.610951 C58.7626345,136.422372 46.3722246,119.687011 44.3051388,99.8812385 C38.4803105,99.0577866 34,94.0521096 34,88 L34,74 C34,68.0540074 38.3245733,63.1180731 44,62.1659169 L44,56 L44,56 C44,25.072054 69.072054,5.68137151e-15 100,0 L100,0 L100,0 C130.927946,-5.68137151e-15 156,25.072054 156,56 L156,62.1659169 C161.675427,63.1180731 166,68.0540074 166,74 L166,88 C166,94.0521096 161.51969,99.0577866 155.694861,99.8812385 C153.627775,119.687011 141.237365,136.422372 124,144.610951 Z"
            id="path-5"
          />
        </defs>
        <g
          id="Avataaar"
          stroke="none"
          stroke-width="1"
          fill="none"
          fill-rule="evenodd">
          <g
            transform="translate(-825.000000, -1100.000000)"
            id="Avataaar/Circle">
            <g transform="translate(825.000000, 1100.000000)">
                <g
                  id="Circle"
                  stroke-width="1"
                  fill-rule="evenodd"
                  transform="translate(12.000000, 40.000000)">
                  <mask id="mask-2" fill="white">
                    <use xlink:href="#path-1" />
                  </mask>
                  <use
                    id="Circle-Background"
                    fill="#E6E6E6"
                    xlink:href="#path-1"
                  />
                  <g
                    id="Color/Palette/Blue-01"
                    mask="url(#mask-2)"
                    fill="#65C9FF">
                    <rect id="pen-Color" x="0" y="0" width="240" height="240" />
                  </g>
                </g>
                <mask id="mask-4" fill="white">
                  <use xlink:href="#path-3" />
                </mask>
              <g id="Mask" />
              <g
                id="Avataaar"
                stroke-width="1"
                fill-rule="evenodd"
                mask="url(#mask-4)">
                <g id="Body" transform="translate(32.000000, 36.000000)">
                  <mask id="mask-6" fill="white">
                    <use xlink:href="#path-5" />
                  </mask>
                  <use fill="#EDB98A" xlink:href="#path-5" />  <g
          id='Color/Palette/Gray-01'
          mask='url(#mask-6)'
          fill-rule='evenodd'
          fill=#EDB98A>
          <rect id='pen-Color' x='0' y='0' width='264' height='110' />
        </g>                  <path
                    d="M156,79 L156,102 C156,132.927946 130.927946,158 100,158 C69.072054,158 44,132.927946 44,102 L44,79 L44,94 C44,124.927946 69.072054,150 100,150 C130.927946,150 156,124.927946 156,94 L156,79 Z"
                    id="Neck-Shadow"
                    fill-opacity="0.100000001"
                    fill="#000000"
                    mask="url(#mask-6)"
                  />
                </g>
                  <g
        id="Clothing/Blazer-+-Shirt"
        transform="translate(0.000000, 170.000000)">
        <defs>
          <path
            d="M133.960472,0.294916112 C170.936473,3.32499816 200,34.2942856 200,72.0517235 L200,81 L0,81 L0,72.0517235 C1.22536245e-14,33.9525631 29.591985,2.76498122 67.0454063,0.219526408 C67.0152598,0.593114549 67,0.969227185 67,1.34762511 C67,13.2107177 81.9984609,22.8276544 100.5,22.8276544 C119.001539,22.8276544 134,13.2107177 134,1.34762511 C134,0.994669088 133.986723,0.64370138 133.960472,0.294916112 Z"
            id="cloth_path"
          />
        </defs>
        <g id="Shirt" transform="translate(32.000000, 29.000000)">
          <mask id="cloth_mask" fill="white">
            <use xlink:href="#path1" />
          </mask>
          <use id="Clothes" fill="#E6E6E6" xlink:href="#cloth_path" />
          <g id="Color/Palette/Black" mask="url(#cloth_mask)" fill="#262E33">
            <g transform="translate(-32.000000, -29.000000)" id="pen-Color">
              <rect x="0" y="0" width="264" height="110" />
            </g>
          </g>
          <g
            id="Shadowy"
            opacity="0.599999964"
            mask="url(#cloth_mask)"
            fill-opacity="0.16"
            fill="#000000">
            <g transform="translate(60.000000, -25.000000)" id="Hola">
              <ellipse
                cx="40.5"
                cy="27.8476251"
                rx="39.6351047"
                ry="26.9138272"
              />
            </g>
          </g>
        </g>
        <g id="Blazer" transform="translate(32.000000, 28.000000)">
          <path
            d="M68.784807,1.12222847 C30.512317,2.80409739 -1.89486556e-14,34.3646437 -1.42108547e-14,73.0517235 L0,73.0517235 L0,82 L69.3616767,82 C65.9607412,69.9199941 64,55.7087296 64,40.5 C64,26.1729736 65.7399891,12.7311115 68.784807,1.12222847 Z M131.638323,82 L200,82 L200,73.0517235 C200,34.7067641 170.024954,3.36285166 132.228719,1.17384225 C135.265163,12.7709464 137,26.1942016 137,40.5 C137,55.7087296 135.039259,69.9199941 131.638323,82 Z"
            id="Saco"
            fill="#3A4C5A"
          />
          <path
            d="M149,58 L158.555853,50.83311 L158.555853,50.83311 C159.998897,49.7508275 161.987779,49.7682725 163.411616,50.8757011 L170,56 L149,58 Z"
            id="Pocket-hanky"
            fill="#E6E6E6"
          />
          <path
            d="M69,1.13686838e-13 C65,19.3333333 66.6666667,46.6666667 74,82 L58,82 L44,46 L50,37 L44,31 L63,1 C65.027659,0.369238637 67.027659,0.0359053037 69,1.13686838e-13 Z"
            id="Wing"
            fill="#2F4351"
          />
          <path
            d="M151,1.13686838e-13 C147,19.3333333 148.666667,46.6666667 156,82 L140,82 L126,46 L132,37 L126,31 L145,1 C147.027659,0.369238637 149.027659,0.0359053037 151,1.13686838e-13 Z"
            id="Wing"
            fill="#2F4351"
            transform="translate(141.000000, 41.000000) scale(-1, 1) translate(-141.000000, -41.000000) "
          />
        </g>
      </g><g id="Face" transform="translate(76.000000, 82.000000)" fill="#000000">      <g
        id='Mouth/Serious'
        transform='translate(2.000000, 52.000000)'
        fill='#000000'
        fill-opacity='0.699999988'>
        <rect id='Why-so-serious?' x='42' y='18' width='24' height='6' rx='3' />
      </g>  <g
        id="Nose/Default"
        transform="translate(28.000000, 40.000000)"
        fill-opacity="0.16">
        <path
          d="M16,8 C16,12.418278 21.372583,16 28,16 L28,16 C34.627417,16 40,12.418278 40,8"
          id="Nose"
        />
      </g>      <g
        id='Eyes/Wink'
        transform='translate(0.000000, 8.000000)'
        fill-opacity='0.599999964'>
        <circle id='Eye' cx='30' cy='22' r='6' />
        <path
          d='M70.4123979,24.204889 C72.2589064,20.4060854 76.4166529,17.7575774 81.2498107,17.7575774 C86.065907,17.7575774 90.2113521,20.3874194 92.0675822,24.1647016 C92.618991,25.2867751 91.8343342,26.2050591 91.0428374,25.5246002 C88.5917368,23.4173607 85.1109468,22.1013658 81.2498107,22.1013658 C77.5094365,22.1013658 74.1259889,23.3363293 71.6897696,25.3292186 C70.7990233,26.0578718 69.8723316,25.3159619 70.4123979,24.204889 Z'
          id='Winky-Wink'
          transform='translate(81.252230, 21.757577) rotate(-4.000000) translate(-81.252230, -21.757577) '
        />
      </g>  <g
        id="Eyebrow/Outline/Angry"
        fill-opacity="0.599999964"
        fill-rule="nonzero">
        <path
          d="M15.6114904,15.1845247 C19.8515017,9.41618792 22.4892046,9.70087612 28.9238518,14.5564693 C29.1057771,14.6937504 29.2212592,14.7812575 29.5936891,15.063789 C34.4216439,18.7263562 36.7081807,20 40,20 C41.1045695,20 42,19.1045695 42,18 C42,16.8954305 41.1045695,16 40,16 C37.9337712,16 36.0986396,14.9777974 32.011227,11.8770179 C31.6358269,11.5922331 31.5189458,11.5036659 31.3332441,11.3635351 C27.5737397,8.52660822 25.3739873,7.28738405 22.6379899,6.99208688 C18.9538127,6.59445233 15.5799484,8.47367246 12.3885096,12.8154753 C11.7343147,13.7054768 11.9254737,14.9572954 12.8154753,15.6114904 C13.7054768,16.2656853 14.9572954,16.0745263 15.6114904,15.1845247 Z"
          id="Eyebrow"
        />
        <path
          d="M73.6114904,15.1845247 C77.8515017,9.41618792 80.4892046,9.70087612 86.9238518,14.5564693 C87.1057771,14.6937504 87.2212592,14.7812575 87.5936891,15.063789 C92.4216439,18.7263562 94.7081807,20 98,20 C99.1045695,20 100,19.1045695 100,18 C100,16.8954305 99.1045695,16 98,16 C95.9337712,16 94.0986396,14.9777974 90.011227,11.8770179 C89.6358269,11.5922331 89.5189458,11.5036659 89.3332441,11.3635351 C85.5737397,8.52660822 83.3739873,7.28738405 80.6379899,6.99208688 C76.9538127,6.59445233 73.5799484,8.47367246 70.3885096,12.8154753 C69.7343147,13.7054768 69.9254737,14.9572954 70.8154753,15.6114904 C71.7054768,16.2656853 72.9572954,16.0745263 73.6114904,15.1845247 Z"
          id="Eyebrow"
          transform="translate(84.999934, 13.470064) scale(-1, 1) translate(-84.999934, -13.470064) "
        />
      </g></g>
            <g id='Top' stroke-width='1' fill-rule='evenodd'>
        <defs>
          <rect id="fizzle_path2" x='0' y='0' width='264' height='280' />
          <path
            d='M90.9102919,55.3613196 L175.085702,55.3613196 C193.333279,44.8338001 196.759397,26.1510357 183.849606,9.92600089 C180.635746,5.88682054 175.085702,21.6755614 158.028596,22.6504878 C140.97149,23.6254143 142.608865,16.3498661 124.45759,19.0739248 C106.306316,21.7979835 108.311575,36.37843 96.4671989,39.8768239 C88.5709482,42.2090865 86.7186458,47.370585 90.9102919,55.3613196 Z'
            id="fizzle_path1"
          />
          <filter
            x='-0.8%'
            y='-2.0%'
            width='101.5%'
            height='108.0%'
            filterUnits='objectBoundingBox'
            id="fizzle_filter">
            <feOffset
              dx='0'
              dy='2'
              in='SourceAlpha'
              result='shadowOffsetOuter1'
            />
            <feColorMatrix
              values='0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0'
              type='matrix'
              in='shadowOffsetOuter1'
              result='shadowMatrixOuter1'
            />
            <feMerge>
              <feMergeNode in='shadowMatrixOuter1' />
              <feMergeNode in='SourceGraphic' />
            </feMerge>
          </filter>
        </defs>
        <mask id="fizzle_mask2" fill='white'>
          <use xlink:href='#fizzle_path2' />
        </mask>
        <g id='Mask' />
        <g id='Top/Short-Hair/Frizzle' mask='url(#fizzle_mask2)'>
          <g transform='translate(-1.000000, 0.000000)'>      <g
        id='Facial-Hair/Moustache-Magnum'
        transform='translate(49.000000, 72.000000)'>
        <defs>
          <path
            d='M83.9980103,74.839711 C83.4569991,75.6087366 82.761047,76.2496937 81.949688,76.6891498 C73.0477917,81.5102869 63.8767499,77.3322546 58.8763101,77.6298353 C56.459601,77.7739966 53.3405442,79.4153191 52.2155358,77.6791014 C50.9768736,75.7669804 55.0680827,65.2207224 64.7214121,63.4643353 C71.7310704,62.1893309 81.4972391,63.6024033 83.9980103,66.9380109 C86.4987814,63.6024033 96.2649453,62.1893309 103.274279,63.4643353 C112.927938,65.2207224 117.019147,75.7669804 115.780485,77.6791014 C114.655476,79.4153191 111.53642,77.7739966 109.119711,77.6298353 C104.118941,77.3322546 94.948229,81.5102869 86.0463327,76.6891498 C85.2349736,76.2496937 84.5390216,75.6087366 83.9980103,74.839711 Z'
            id="magnum_path"
          />
        </defs>
        <mask id="magnum_mask" fill='white'>
          <use xlink:href='#magnum_path' />
        </mask>
        <use
          id='Hey...'
          fill='#28354B'
          fill-rule='evenodd'
          xlink:href='#magnum_path'
        />  <g
          id='Color/Palette/Gray-01'
          mask='url(#magnum_mask)'
          fill-rule='evenodd'
          fill=#2C1B18>
          <rect id='pen-Color' x='0' y='0' width='264' height='110' />
        </g></g><mask id="fizzle_mask1" fill='white'>
              <use xlink:href='#fizzle_path1' />
            </mask>
            <use
              id='Hair-Maks'
              stroke='none'
              fill='#252E32'
              fill-rule='evenodd'
              xlink:href='#fizzle_path1'/>  <g
          id='Color/Palette/Gray-01'
          mask='url(#fizzle_mask1)'
          fill-rule='evenodd'
          fill=#4A312C>
          <rect id='pen-Color' x='0' y='0' width='264' height='110' />
        </g>      <g
        id='Top/_Resources/Kurt'
        fill='none'
        transform='translate(62.000000, 85.000000)'
        stroke-width='1'>
        <defs>
          <filter
            x='-0.8%'
            y='-2.0%'
            width='101.5%'
            height='108.0%'
            filterUnits='objectBoundingBox'
            id='kurta_filter'>
            <feOffset
              dx='0'
              dy='2'
              in='SourceAlpha'
              result='shadowOffsetOuter1'
            />
            <feColorMatrix
              values='0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0'
              type='matrix'
              in='shadowOffsetOuter1'
              result='shadowMatrixOuter1'
            />
            <feMerge>
              <feMergeNode in='shadowMatrixOuter1' />
              <feMergeNode in='SourceGraphic' />
            </feMerge>
          </filter>
        </defs>
        <g
          id='Kurts'
          filter='url(#kurta_filter)'
          transform='translate(5.000000, 2.000000)'>
          <path
            d='M66,11.1111111 C54.9625586,11.1111111 53.3705645,2.0266011 30.6705882,0.740740741 C7.98552275,-0.283199952 0.815225204,6.4494855 0.776470588,11.1111111 C0.813236892,15.4042795 -0.352293566,26.5612661 14.3647059,39.6296296 C29.1367705,55.1420807 44.2704162,49.8818301 49.6941176,44.8148148 C55.1352081,42.4731118 61.3403442,21.4596351 66,21.4814815 C70.6596558,21.5033279 76.8647919,42.4731118 82.3058824,44.8148148 C87.7295838,49.8818301 102.86323,55.1420807 117.635294,39.6296296 C132.352294,26.5612661 131.186763,15.4042795 131.223529,11.1111111 C131.184775,6.4494855 124.014477,-0.283199952 101.329412,0.740740741 C78.6294355,2.0266011 77.0374414,11.1111111 66,11.1111111 Z'
            id='It!'
            fill='#F4F4F4'
            fill-rule='nonzero'
          />
          <path
            d='M55.1294118,21.4814815 C55.5103632,13.8233491 42.2156493,5.64243259 27.9529412,5.92592593 C13.6973442,6.22450879 11.8417942,15.3786982 11.6470588,18.8888889 C11.2982286,27.0220633 20.014463,45.3037598 36.1058824,44.8148148 C52.1972736,44.305848 54.9092435,26.5344305 55.1294118,21.4814815 Z'
            id='Did'
            fill='#2F383B'
            fill-rule='nonzero'
          />
          <path
            d='M120.352941,21.4814815 C120.733893,13.8233491 107.439179,5.64243259 93.1764706,5.92592593 C78.9208736,6.22450879 77.0653236,15.3786982 76.8705882,18.8888889 C76.521758,27.0220633 85.2379924,45.3037598 101.329412,44.8148148 C117.420803,44.305848 120.132773,26.5344305 120.352941,21.4814815 Z'
            id='Courtney'
            fill='#2F383B'
            fill-rule='nonzero'
            transform='translate(98.611765, 25.370370) scale(-1, 1) translate(-98.611765, -25.370370) '
          />
        </g>
      </g></g>
        </g>
      </g>              </g>
            </g>
          </g>
        </g>
      </svg>

</body>
</html>""" ,mimeType: "text/html").toString(),
        // initialUrl: baseUrl + widget.url,
        onWebViewCreated: (contrller) {
          print('webview created');
        },
      ),
      // height: 300.0
    );
  }
}
