{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fugitive-v0_3_0.flake = false;
  inputs.src-fugitive-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-fugitive-v0_3_0.owner = "haltcase";
  inputs.src-fugitive-v0_3_0.repo  = "fugitive";
  inputs.src-fugitive-v0_3_0.type  = "github";
  
  inputs."tempfile".owner = "nim-nix-pkgs";
  inputs."tempfile".ref   = "master";
  inputs."tempfile".repo  = "tempfile";
  inputs."tempfile".dir   = "0_1_7";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fugitive-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}