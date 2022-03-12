{
  description = ''Fast and just works JSON-Binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sam-0_1_3.flake = false;
  inputs.src-sam-0_1_3.owner = "OpenSystemsLab";
  inputs.src-sam-0_1_3.ref   = "refs/tags/0.1.3";
  inputs.src-sam-0_1_3.repo  = "sam.nim";
  inputs.src-sam-0_1_3.type  = "github";
  
  inputs."jsmn".dir   = "nimpkgs/j/jsmn";
  inputs."jsmn".owner = "riinr";
  inputs."jsmn".ref   = "flake-pinning";
  inputs."jsmn".repo  = "flake-nimble";
  inputs."jsmn".type  = "github";
  inputs."jsmn".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sam-0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sam-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}