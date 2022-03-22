{
  description = ''wit.ai client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-witai-master.flake = false;
  inputs.src-witai-master.ref   = "refs/heads/master";
  inputs.src-witai-master.owner = "xmonader";
  inputs.src-witai-master.repo  = "witai-nim";
  inputs.src-witai-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-witai-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-witai-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}