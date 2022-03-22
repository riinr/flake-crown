{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-polypbren-v0_4-paper.flake = false;
  inputs.src-polypbren-v0_4-paper.ref   = "refs/tags/v0.4-paper";
  inputs.src-polypbren-v0_4-paper.owner = "guibar64";
  inputs.src-polypbren-v0_4-paper.repo  = "polypbren";
  inputs.src-polypbren-v0_4-paper.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polypbren-v0_4-paper"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-polypbren-v0_4-paper";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}