{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_11_15.flake = false;
  inputs.src-hmisc-v0_11_15.owner = "haxscramper";
  inputs.src-hmisc-v0_11_15.ref   = "refs/tags/v0.11.15";
  inputs.src-hmisc-v0_11_15.repo  = "hmisc";
  inputs.src-hmisc-v0_11_15.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fusion".dir   = "nimpkgs/f/fusion";
  inputs."fusion".owner = "riinr";
  inputs."fusion".ref   = "flake-pinning";
  inputs."fusion".repo  = "flake-nimble";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."benchy".dir   = "nimpkgs/b/benchy";
  inputs."benchy".owner = "riinr";
  inputs."benchy".ref   = "flake-pinning";
  inputs."benchy".repo  = "flake-nimble";
  inputs."benchy".type  = "github";
  inputs."benchy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."benchy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_11_15"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_11_15";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}