{
  description = ''Wrapper for libclang C headers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-pmunch-libclang-v0_59.flake = false;
  inputs.src-github-pmunch-libclang-v0_59.ref   = "refs/tags/v0.59";
  inputs.src-github-pmunch-libclang-v0_59.owner = "pmunch";
  inputs.src-github-pmunch-libclang-v0_59.repo  = "libclang-nim";
  inputs.src-github-pmunch-libclang-v0_59.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-pmunch-libclang-v0_59"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-pmunch-libclang-v0_59";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}