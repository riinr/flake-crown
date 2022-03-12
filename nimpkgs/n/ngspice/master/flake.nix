{
  description = ''Analog electronic circuit simiulator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ngspice-master.flake = false;
  inputs.src-ngspice-master.owner = "haxscramper";
  inputs.src-ngspice-master.ref   = "refs/heads/master";
  inputs.src-ngspice-master.repo  = "ngspice";
  inputs.src-ngspice-master.type  = "github";
  
  inputs."sorta".dir   = "nimpkgs/s/sorta";
  inputs."sorta".owner = "riinr";
  inputs."sorta".ref   = "flake-pinning";
  inputs."sorta".repo  = "flake-nimble";
  inputs."sorta".type  = "github";
  inputs."sorta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".dir   = "nimpkgs/h/hmisc";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".ref   = "flake-pinning";
  inputs."hmisc".repo  = "flake-nimble";
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