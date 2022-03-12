{
  description = ''A simple PubSub framework using STOMP.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cittadino-0_1_4.flake = false;
  inputs.src-cittadino-0_1_4.owner = "makingspace";
  inputs.src-cittadino-0_1_4.ref   = "refs/tags/0.1.4";
  inputs.src-cittadino-0_1_4.repo  = "cittadino";
  inputs.src-cittadino-0_1_4.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cittadino-0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cittadino-0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}