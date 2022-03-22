{
  description = ''wrapper for the notmuch 0.28.0 mail library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notmuch-master.flake = false;
  inputs.src-notmuch-master.ref   = "refs/heads/master";
  inputs.src-notmuch-master.owner = "samdmarshall";
  inputs.src-notmuch-master.repo  = "notmuch.nim";
  inputs.src-notmuch-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notmuch-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notmuch-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}