{
  description = ''Bindings for Greasemonkey API and an userscript header generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gm_api-master.flake = false;
  inputs.src-gm_api-master.owner = "thisago";
  inputs.src-gm_api-master.ref   = "refs/heads/master";
  inputs.src-gm_api-master.repo  = "gm_api";
  inputs.src-gm_api-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gm_api-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gm_api-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}