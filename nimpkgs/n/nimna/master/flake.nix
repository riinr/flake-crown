{
  description = ''Nucleic acid folding and design.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimna-master.flake = false;
  inputs.src-nimna-master.owner = "mjendrusch";
  inputs.src-nimna-master.ref   = "refs/heads/master";
  inputs.src-nimna-master.repo  = "nimna";
  inputs.src-nimna-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimna-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimna-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}