{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-polypbren-v0_4_2.flake = false;
  inputs.src-polypbren-v0_4_2.ref   = "refs/tags/v0.4.2";
  inputs.src-polypbren-v0_4_2.owner = "guibar64";
  inputs.src-polypbren-v0_4_2.repo  = "polypbren";
  inputs.src-polypbren-v0_4_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polypbren-v0_4_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-polypbren-v0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}