{
  description = ''wrapper for the sendmail command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easymail-master.flake = false;
  inputs.src-easymail-master.owner = "coocheenin";
  inputs.src-easymail-master.ref   = "refs/heads/master";
  inputs.src-easymail-master.repo  = "easymail";
  inputs.src-easymail-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easymail-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easymail-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}