{
  description = ''science!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-science-master.flake = false;
  inputs.src-science-master.ref   = "refs/heads/master";
  inputs.src-science-master.owner = "ruivieira";
  inputs.src-science-master.repo  = "nim-science";
  inputs.src-science-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-science-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-science-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}