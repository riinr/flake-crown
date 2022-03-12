{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sayhissatsuwaza-master.flake = false;
  inputs.src-sayhissatsuwaza-master.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-master.ref   = "refs/heads/master";
  inputs.src-sayhissatsuwaza-master.repo  = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-master.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sayhissatsuwaza-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sayhissatsuwaza-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}