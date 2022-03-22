{
  description = ''Native file dialogs (x11, windows, osx) with extension filters and predefined path.
    System file icons in any resolution (x11 with theme support, windows, osx).
    Open file in default application (x11, windows, osx)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-os_files-master.flake = false;
  inputs.src-os_files-master.owner = "tormund";
  inputs.src-os_files-master.ref   = "master";
  inputs.src-os_files-master.repo  = "os_files";
  inputs.src-os_files-master.type  = "github";
  
  inputs."oldgtk3".owner = "nim-nix-pkgs";
  inputs."oldgtk3".ref   = "master";
  inputs."oldgtk3".repo  = "oldgtk3";
  inputs."oldgtk3".dir   = "";
  inputs."oldgtk3".type  = "github";
  inputs."oldgtk3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldgtk3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsbind".owner = "nim-nix-pkgs";
  inputs."jsbind".ref   = "master";
  inputs."jsbind".repo  = "jsbind";
  inputs."jsbind".dir   = "";
  inputs."jsbind".type  = "github";
  inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-os_files-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-os_files-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}