{
  description = ''A Nim library for data science and machine learning'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mentat-master.flake = false;
  inputs.src-mentat-master.owner = "ruivieira";
  inputs.src-mentat-master.ref   = "refs/heads/master";
  inputs.src-mentat-master.repo  = "nim-mentat";
  inputs.src-mentat-master.type  = "github";
  
  inputs."science".dir   = "nimpkgs/s/science";
  inputs."science".owner = "riinr";
  inputs."science".ref   = "flake-pinning";
  inputs."science".repo  = "flake-nimble";
  inputs."science".type  = "github";
  inputs."science".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mentat-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mentat-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}