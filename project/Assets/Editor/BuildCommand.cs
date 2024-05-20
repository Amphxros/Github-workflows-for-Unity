using UnityEditor;
using UnityEditor.Build.Reporting;
using System.Linq;
using System;
using UnityEngine;


static class BuildCommand
{
	static void PerformBuild ()
	{
		Console.WriteLine (":: Performing build");
		string[] scenes = { "Assets/Scenes/SampleScene.unity" };
        string buildPath = "Builds/MyGame.exe";
        // Configura las opciones de build
        BuildOptions buildOptions = BuildOptions.None;
        
        // Realiza la build
        BuildPipeline.BuildPlayer(scenes, buildPath, BuildTarget.StandaloneWindows64, buildOptions);
	}
}