{
  description = ''Wrapper for js ajax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ajax-master.flake = false;
  inputs.src-ajax-master.ref   = "refs/heads/master";
  inputs.src-ajax-master.owner = "stisa";
  inputs.src-ajax-master.repo  = "ajax";
  inputs.src-ajax-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ajax-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ajax-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}