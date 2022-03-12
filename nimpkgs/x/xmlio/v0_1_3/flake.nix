{
  description = ''Mapping nim type to xml node, and parse from it.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xmlio-v0_1_3.flake = false;
  inputs.src-xmlio-v0_1_3.owner = "codehz";
  inputs.src-xmlio-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-xmlio-v0_1_3.repo  = "xmlio";
  inputs.src-xmlio-v0_1_3.type  = "github";
  
  inputs."vtable".dir   = "nimpkgs/v/vtable";
  inputs."vtable".owner = "riinr";
  inputs."vtable".ref   = "flake-pinning";
  inputs."vtable".repo  = "flake-nimble";
  inputs."vtable".type  = "github";
  inputs."vtable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xmlio-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xmlio-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}