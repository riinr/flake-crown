{
  description = ''Analog electronic circuit simiulator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ngspice-master.flake = false;
  inputs.src-ngspice-master.ref   = "refs/heads/master";
  inputs.src-ngspice-master.owner = "haxscramper";
  inputs.src-ngspice-master.repo  = "ngspice";
  inputs.src-ngspice-master.type  = "github";
  
  inputs."sorta".owner = "nim-nix-pkgs";
  inputs."sorta".ref   = "master";
  inputs."sorta".repo  = "sorta";
  inputs."sorta".dir   = "";
  inputs."sorta".type  = "github";
  inputs."sorta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".dir   = "v0_14_6";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ngspice-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ngspice-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}