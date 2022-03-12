{
  description = ''rect is a command to crop/paste rectangle text.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rect-master.flake = false;
  inputs.src-rect-master.owner = "jiro4989";
  inputs.src-rect-master.ref   = "refs/heads/master";
  inputs.src-rect-master.repo  = "rect";
  inputs.src-rect-master.type  = "github";
  
  inputs."eastasianwidth".dir   = "nimpkgs/e/eastasianwidth";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".ref   = "flake-pinning";
  inputs."eastasianwidth".repo  = "flake-nimble";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rect-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rect-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}