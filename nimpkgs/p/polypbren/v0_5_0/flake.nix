{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-polypbren-v0_5_0.flake = false;
  inputs.src-polypbren-v0_5_0.ref   = "refs/tags/v0.5.0";
  inputs.src-polypbren-v0_5_0.owner = "guibar64";
  inputs.src-polypbren-v0_5_0.repo  = "polypbren";
  inputs.src-polypbren-v0_5_0.type  = "github";
  
  inputs."github-yglukhov-threadpools".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-threadpools".ref   = "master";
  inputs."github-yglukhov-threadpools".repo  = "github-yglukhov-threadpools";
  inputs."github-yglukhov-threadpools".dir   = "master";
  inputs."github-yglukhov-threadpools".type  = "github";
  inputs."github-yglukhov-threadpools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-threadpools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polypbren-v0_5_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-polypbren-v0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}