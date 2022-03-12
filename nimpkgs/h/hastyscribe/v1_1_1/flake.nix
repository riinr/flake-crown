{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hastyscribe-v1_1_1.flake = false;
  inputs.src-hastyscribe-v1_1_1.owner = "h3rald";
  inputs.src-hastyscribe-v1_1_1.ref   = "refs/tags/v1.1.1";
  inputs.src-hastyscribe-v1_1_1.repo  = "hastyscribe";
  inputs.src-hastyscribe-v1_1_1.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hastyscribe-v1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}