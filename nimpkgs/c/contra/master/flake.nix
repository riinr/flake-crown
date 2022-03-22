{
  description = ''Lightweight Self-Documenting Design by Contract Programming and Security Hardened mode and Immutable Programming, NimScript, JavaScript, compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-contra-master.flake = false;
  inputs.src-contra-master.ref   = "refs/heads/master";
  inputs.src-contra-master.owner = "juancarlospaco";
  inputs.src-contra-master.repo  = "nim-contra";
  inputs.src-contra-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-contra-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-contra-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}