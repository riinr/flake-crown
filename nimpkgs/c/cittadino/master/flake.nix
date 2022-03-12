{
  description = ''A simple PubSub framework using STOMP.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cittadino-master.flake = false;
  inputs.src-cittadino-master.owner = "makingspace";
  inputs.src-cittadino-master.ref   = "refs/heads/master";
  inputs.src-cittadino-master.repo  = "cittadino";
  inputs.src-cittadino-master.type  = "github";
  
  inputs."https://github.com/subsetpark/nim-stomp.git".dir   = "nimpkgs/h/https://github.com/subsetpark/nim-stomp.git";
  inputs."https://github.com/subsetpark/nim-stomp.git".owner = "riinr";
  inputs."https://github.com/subsetpark/nim-stomp.git".ref   = "flake-pinning";
  inputs."https://github.com/subsetpark/nim-stomp.git".repo  = "flake-nimble";
  inputs."https://github.com/subsetpark/nim-stomp.git".type  = "github";
  inputs."https://github.com/subsetpark/nim-stomp.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/subsetpark/nim-stomp.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cittadino-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cittadino-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}