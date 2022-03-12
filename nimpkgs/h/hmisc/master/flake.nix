{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-master.flake = false;
  inputs.src-hmisc-master.owner = "haxscramper";
  inputs.src-hmisc-master.ref   = "refs/heads/master";
  inputs.src-hmisc-master.repo  = "hmisc";
  inputs.src-hmisc-master.type  = "github";
  
  inputs."benchy".dir   = "nimpkgs/b/benchy";
  inputs."benchy".owner = "riinr";
  inputs."benchy".ref   = "flake-pinning";
  inputs."benchy".repo  = "flake-nimble";
  inputs."benchy".type  = "github";
  inputs."benchy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."benchy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".dir   = "nimpkgs/j/jsony";
  inputs."jsony".owner = "riinr";
  inputs."jsony".ref   = "flake-pinning";
  inputs."jsony".repo  = "flake-nimble";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb".dir   = "nimpkgs/u/unicodedb";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".ref   = "flake-pinning";
  inputs."unicodedb".repo  = "flake-nimble";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}