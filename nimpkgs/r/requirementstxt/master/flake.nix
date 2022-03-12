{
  description = ''Python requirements.txt generic parser for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-requirementstxt-master.flake = false;
  inputs.src-requirementstxt-master.owner = "juancarlospaco";
  inputs.src-requirementstxt-master.ref   = "refs/heads/master";
  inputs.src-requirementstxt-master.repo  = "nim-requirementstxt";
  inputs.src-requirementstxt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-requirementstxt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-requirementstxt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}