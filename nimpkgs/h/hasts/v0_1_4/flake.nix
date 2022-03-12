{
  description = ''AST for various languages'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hasts-v0_1_4.flake = false;
  inputs.src-hasts-v0_1_4.owner = "haxscramper";
  inputs.src-hasts-v0_1_4.ref   = "refs/tags/v0.1.4";
  inputs.src-hasts-v0_1_4.repo  = "hasts";
  inputs.src-hasts-v0_1_4.type  = "github";
  
  inputs."hmisc".dir   = "nimpkgs/h/hmisc";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".ref   = "flake-pinning";
  inputs."hmisc".repo  = "flake-nimble";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hasts-v0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hasts-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}