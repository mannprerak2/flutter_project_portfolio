//global file for variables to store portfolio data

final profileImageUrl =
    "https://avatars2.githubusercontent.com/u/31154435?s=400&v=4";
final name = "Prerak Mann";

final projectsModels = <ProjectModel>[
  ProjectModel(
    name: "Anroid Nearby Connections for Flutter",
    description: "Flutter Plugin for the android Nearby Connections API",
    image: null,
    link: "https://github.com/mannprerak2/nearby_connections",
  ),
  ProjectModel(
    name: "Flutter clock",
    description: "My Flutter Clock UI submission",
    image: "https://github.com/mannprerak2/mflutter_clock/raw/master/ss/ss.jpg",
    link: "https://github.com/mannprerak2/mflutter_clock",
  ),
  ProjectModel(
    name: "EventHub",
    description: "View events at my college, DTU",
    image:
        "https://github.com/mannprerak2/event_hub_flutter/raw/master/screenshots/1.jpg",
    link: "https://github.com/mannprerak2/event_hub_flutter",
  ),
  ProjectModel(
    name: "ActivityDo",
    description: "Plan and Organise Notes as Activities",
    image:
        "https://github.com/mannprerak2/ActivityDo/raw/master/screenshots/home-quicknotes.jpg",
    link: "https://github.com/mannprerak2/ActivityDo",
  ),
  ProjectModel(
    name: "PutAway Tab management",
    description: "A tab management extension for Chrome and Chromium-based browsers Made with SvelteJS",
    image: null,
    link: "https://github.com/put-away/putaway",
  ),
  ProjectModel(
    name: "Jigsaw Camera Puzzle",
    description: "A jigsaw puzzle with live camera image, made with Flutter",
    image:
        "https://github.com/mannprerak2/JigsawCameraPuzzle/raw/master/GIF/gif.gif",
    link: "https://github.com/mannprerak2/JigsawCameraPuzzle",
  ),
  ProjectModel(
    name: "pLinkSaver",
    description:
        "A 'Chrome' extension to quickly save links and sessions as bookmarks",
    image:
        "https://github.com/mannprerak2/plinksaver/raw/master/screenshots/ex-popup.png?raw=true",
    link: "https://github.com/mannprerak2/plinksaver",
  ),
  ProjectModel(
    name: "Flow Chart Maker",
    description: "Make flowcharts easily in browser and download svg directly",
    image:
        "https://github.com/mannprerak2/flowchartmaker/raw/master/screenshots/1.png",
    link: "https://github.com/mannprerak2/flowchartmaker",
  ),
  ProjectModel(
    name: "My Portfolio",
    description: "This Website, made with Flutter Web",
    image:
        "https://github.com/mannprerak2/mannprerak2.github.io/raw/master/screenshots/1.png",
    link: "https://github.com/mannprerak2/mannprerak2.github.io",
  ),
  ProjectModel(
    name: "Perspective Run Unity3D",
    description: "Old Endless Runner, Made with Unity3D",
    image:
        "https://github.com/mannprerak2/perspective-run-unity/raw/master/Screenshots/Screenshot_20170608-220437.png",
    link: "https://github.com/mannprerak2/perspective-run-unity",
  ),
  ProjectModel(
    name: "Music Video Recorder",
    description:
        "Bash script to Record Audio on PC, Video on Phone simultaneously and merge them automatically with sync",
    image: null,
    link: "https://github.com/mannprerak2/music-video-recorder",
  ),
  ProjectModel(
    name: "Android Notification Listener for Flutter",
    description:
        "A flutter plugin to listen notifications on android in background",
    image: null,
    link: "https://github.com/mannprerak2/android_notification_listener",
  ),
  ProjectModel(
    name: "Automation FB",
    description:
        "Automating facebook using selenium in python (Like a page and their posts and sending messages to friends)",
    image: null,
    link: "https://github.com/mannprerak2/Automation-FB",
  ),
  ProjectModel(
    name: "Monoply Money Handler",
    description:
        "A flutter app to handle money transactions in monoply with multiple connected devices on LAN",
    image: null,
    link: "https://github.com/mannprerak2/monopoly_money_game",
  ),
];

class ProjectModel {
  final String name, description, image, link;

  ProjectModel({this.name, this.description, this.image, this.link});
}
