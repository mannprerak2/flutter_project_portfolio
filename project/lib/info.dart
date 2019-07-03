//global file for variables to store portfolio data

final profileImageUrl =
    "https://avatars2.githubusercontent.com/u/31154435?s=400&v=4";
final name = "Prerak Mann";

final projectsModels = <ProjectModel>[
  ProjectModel(
    name: "EventHub",
    description: "View events at DTU",
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
    name: "My Portfolio",
    description: "This Website, made with Flutter Web",
    image: null,
    link: "https://github.com/mannprerak2/mannprerak2.github.io",
  ),
  ProjectModel(
    name: "Monoply Money Handler",
    description:
        "A flutter app to handle money transactions in monoply with multiple connected devices on LAN",
    image: null,
    link: "https://github.com/mannprerak2/monopoly_money_game",
  ),
  ProjectModel(
    name: "Anroid Nearby Devices for Flutter",
    description: "Flutter Plugin for the android Nearby Connections API",
    image: null,
    link: "https://github.com/mannprerak2/nearby_connections",
  ),
  ProjectModel(
    name: "pLinkSaver",
    description:
        "A 'Chrome' extension to quickly save links and sessions as bookmarks",
    image: null,
    link: "https://github.com/mannprerak2/plinksaver",
  ),
  ProjectModel(
    name: "Android Notification Listener for Flutter",
    description:
        "A flutter plugin to listen notifications on android in background",
    image: null,
    link: "https://github.com/mannprerak2/android_notification_listener",
  ),
  ProjectModel(
    name: "Jigsaw Camera Puzzle",
    description: "A jigsaw puzzle with live camera image, made with Flutter",
    image: "https://github.com/mannprerak2/JigsawCameraPuzzle/raw/master/GIF/gif.gif",
    link: "https://github.com/mannprerak2/JigsawCameraPuzzle",
  ),
  ProjectModel(
    name: "Perspective Run Unity3D",
    description: "Old Endless Runner, Made with Unity3D",
    image:
        "https://github.com/mannprerak2/perspective-run-unity/raw/master/Screenshots/Screenshot_20170608-220437.png",
    link: "https://github.com/mannprerak2/perspective-run-unity",
  ),
  ProjectModel(
    name: "Flow Chart Maker",
    description: "Make flowcharts easily in browser and download svg directly",
    image: null,
    link: "https://github.com/mannprerak2/flowchartmaker",
  ),
  ProjectModel(
    name: "Music Video Recorder",
    description:
        "Bash script to Record Audio on PC, Video on Phone simultaneously and merge them automatically with sync",
    image: null,
    link: "https://github.com/mannprerak2/music-video-recorder",
  ),
  ProjectModel(
    name: "Automation FB",
    description:
        "Automating facebook using selenium in python (Like a page and their posts and sending messages to friends)",
    image: null,
    link: "https://github.com/mannprerak2/Automation-FB",
  ),
];

class ProjectModel {
  final String name, description, image, link;

  ProjectModel({this.name, this.description, this.image, this.link});
}
