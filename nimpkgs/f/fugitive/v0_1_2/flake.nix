{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fugitive-v0_1_2.flake = false;
  inputs.src-fugitive-v0_1_2.owner = "haltcase";
  inputs.src-fugitive-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-fugitive-v0_1_2.repo  = "fugitive";
  inputs.src-fugitive-v0_1_2.type  = "github";
  
  inputs."colorize".dir   = "nimpkgs/c/colorize";
  inputs."colorize".owner = "riinr";
  inputs."colorize".ref   = "flake-pinning";
  inputs."colorize".repo  = "flake-nimble";
  inputs."colorize".type  = "github";
  inputs."colorize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fugitive-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}