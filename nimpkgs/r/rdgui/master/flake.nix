{
  description = ''A modular GUI toolkit for rapid'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rdgui-master.flake = false;
  inputs.src-rdgui-master.ref   = "refs/heads/master";
  inputs.src-rdgui-master.owner = "liquid600pgm";
  inputs.src-rdgui-master.repo  = "rdgui";
  inputs.src-rdgui-master.type  = "github";
  
  inputs."rapid".owner = "nim-nix-pkgs";
  inputs."rapid".ref   = "master";
  inputs."rapid".repo  = "rapid";
  inputs."rapid".dir   = "2019_1";
  inputs."rapid".type  = "github";
  inputs."rapid".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rdgui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rdgui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}