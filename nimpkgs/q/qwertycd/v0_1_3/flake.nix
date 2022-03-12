{
  description = ''Terminal UI based cd command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-qwertycd-v0_1_3.flake = false;
  inputs.src-qwertycd-v0_1_3.owner = "minefuto";
  inputs.src-qwertycd-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-qwertycd-v0_1_3.repo  = "qwertycd";
  inputs.src-qwertycd-v0_1_3.type  = "github";
  
  inputs."illwill".dir   = "nimpkgs/i/illwill";
  inputs."illwill".owner = "riinr";
  inputs."illwill".ref   = "flake-pinning";
  inputs."illwill".repo  = "flake-nimble";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml".dir   = "nimpkgs/p/parsetoml";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".ref   = "flake-pinning";
  inputs."parsetoml".repo  = "flake-nimble";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-qwertycd-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-qwertycd-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}