{
  description = ''A game engine for rapid development and easy prototyping'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rapid-master.flake = false;
  inputs.src-rapid-master.owner = "liquid600pgm";
  inputs.src-rapid-master.ref   = "refs/heads/master";
  inputs.src-rapid-master.repo  = "rapid";
  inputs.src-rapid-master.type  = "github";
  
  inputs."aglet".owner = "nim-nix-pkgs";
  inputs."aglet".ref   = "master";
  inputs."aglet".repo  = "aglet";
  inputs."aglet".type  = "github";
  inputs."aglet".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stbimage".owner = "nim-nix-pkgs";
  inputs."stbimage".ref   = "master";
  inputs."stbimage".repo  = "stbimage";
  inputs."stbimage".type  = "github";
  inputs."stbimage".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stbimage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rapid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rapid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}