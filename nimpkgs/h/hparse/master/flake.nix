{
  description = ''Text parsing utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hparse-master.flake = false;
  inputs.src-hparse-master.owner = "haxscramper";
  inputs.src-hparse-master.ref   = "refs/heads/master";
  inputs.src-hparse-master.repo  = "hparse";
  inputs.src-hparse-master.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint".owner = "nim-nix-pkgs";
  inputs."hpprint".ref   = "master";
  inputs."hpprint".repo  = "hpprint";
  inputs."hpprint".type  = "github";
  inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast".owner = "nim-nix-pkgs";
  inputs."hnimast".ref   = "master";
  inputs."hnimast".repo  = "hnimast";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hparse-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hparse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}