{
  description = ''A performant Nim parsing library built for humans.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-microparsec-master.flake = false;
  inputs.src-microparsec-master.owner = "schneiderfelipe";
  inputs.src-microparsec-master.ref   = "refs/heads/master";
  inputs.src-microparsec-master.repo  = "microparsec";
  inputs.src-microparsec-master.type  = "github";
  
  inputs."result".dir   = "nimpkgs/r/result";
  inputs."result".owner = "riinr";
  inputs."result".ref   = "flake-pinning";
  inputs."result".repo  = "flake-nimble";
  inputs."result".type  = "github";
  inputs."result".inputs.nixpkgs.follows = "nixpkgs";
  inputs."result".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-microparsec-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-microparsec-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}