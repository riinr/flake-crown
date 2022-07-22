{
  description = ''A collection of numerical methods written in Nim. Current features: integration, ode, optimization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-numericalnim-v0_7_1.flake = false;
  inputs.src-numericalnim-v0_7_1.ref   = "refs/tags/v0.7.1";
  inputs.src-numericalnim-v0_7_1.owner = "SciNim";
  inputs.src-numericalnim-v0_7_1.repo  = "numericalnim";
  inputs.src-numericalnim-v0_7_1.type  = "github";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_13";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-hugogranstrom-cdt".owner = "nim-nix-pkgs";
  inputs."github-hugogranstrom-cdt".ref   = "master";
  inputs."github-hugogranstrom-cdt".repo  = "github-hugogranstrom-cdt";
  inputs."github-hugogranstrom-cdt".dir   = "master";
  inputs."github-hugogranstrom-cdt".type  = "github";
  inputs."github-hugogranstrom-cdt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-hugogranstrom-cdt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-numericalnim-v0_7_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-numericalnim-v0_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}