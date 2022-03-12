{
  description = ''Time travelling for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timecop-0_1_0.flake = false;
  inputs.src-timecop-0_1_0.owner = "ba0f3";
  inputs.src-timecop-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-timecop-0_1_0.repo  = "timecop.nim";
  inputs.src-timecop-0_1_0.type  = "github";
  
  inputs."subhook".dir   = "nimpkgs/s/subhook";
  inputs."subhook".owner = "riinr";
  inputs."subhook".ref   = "flake-pinning";
  inputs."subhook".repo  = "flake-nimble";
  inputs."subhook".type  = "github";
  inputs."subhook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timecop-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timecop-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}