{
  description = ''libxslxwriter wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlibxlsxwriter-master.flake = false;
  inputs.src-nimlibxlsxwriter-master.owner = "ThomasTJdev";
  inputs.src-nimlibxlsxwriter-master.ref   = "refs/heads/master";
  inputs.src-nimlibxlsxwriter-master.repo  = "nimlibxlsxwriter";
  inputs.src-nimlibxlsxwriter-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlibxlsxwriter-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlibxlsxwriter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}