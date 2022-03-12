{
  description = ''Tuple manipulation utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tuples-master.flake = false;
  inputs.src-tuples-master.owner = "MasonMcGill";
  inputs.src-tuples-master.ref   = "refs/heads/master";
  inputs.src-tuples-master.repo  = "tuples";
  inputs.src-tuples-master.type  = "github";
  
  inputs."nimrod".dir   = "nimpkgs/n/nimrod";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".ref   = "flake-pinning";
  inputs."nimrod".repo  = "flake-nimble";
  inputs."nimrod".type  = "github";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tuples-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tuples-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}