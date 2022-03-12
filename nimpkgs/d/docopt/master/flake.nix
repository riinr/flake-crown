{
  description = ''Command-line args parser based on Usage message'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-docopt-master.flake = false;
  inputs.src-docopt-master.owner = "docopt";
  inputs.src-docopt-master.ref   = "refs/heads/master";
  inputs.src-docopt-master.repo  = "docopt.nim";
  inputs.src-docopt-master.type  = "github";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-docopt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-docopt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}