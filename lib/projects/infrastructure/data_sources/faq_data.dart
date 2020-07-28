import 'package:flutter/foundation.dart';

class Faq {
  const Faq({@required this.question, @required this.answer});
  final String question;
  final String answer;
}

List<Faq> faqList = [
  Faq(
      question: 'How do I access Kitengela?',
      answer:
          'You take a Shuttle no 110” Kitengela Direct “or Drive along Mombasa road and branch to the right i.e. after 2.9 km past Mlolongo, use the under tunnel and drive 2.9km from the tunnel and you are at Kitengela Transport City.'),
  Faq(
      question: 'When do you take clients for Viewing?',
      answer:
          'We take customers to view from Monday to Sartuday. We pick you from our offices at Milele center, Second floor, office no 35. (Milele center is in the same building that host Equity Bank Kitengela), '),
  Faq(
      question: 'Do you Charge the Viewing tour?',
      answer:
          'We do not charge a cent. You just come and get a driver & our staff ready for you eager to make sure that you are comfortable as you view. We also provide a bottle of water to ensure that you enjoy the viewing tour'),
  Faq(
      question: 'What do I do after viewing & selecting a valued added plot?',
      answer:
          'Give a copy of the ID, copy of the PIN and also fill in the plot booking form (ksh 1000) indicating all your details and inserting the plot number that you booked. Thereafter we get in touch and give you an offer letter. We give you another 14 days to allow you make your final informed decision, do a search and allow you time to meditate on your investment decision'),
  Faq(
      question: 'Where are your offices?',
      answer:
          'We are at barclays Plaza Loita Street 14th Floor Wing A. We also have a branch at Kitengela, Milele center, office no 35. (Milele office is behind Equity Bank)'),
  Faq(
      question: 'Do you sell to Kenyans in Diaspora?',
      answer:
          'Yes, we have over 100 clients in our profile that we have sold value added plots to. We do it at ease and we can email you the Diaspora procedures if you provide us with you email address. We do it hustle free'),
  Faq(
      question: 'How long have you been in this business?',
      answer:
          'We have been in business for the last 18 years. We are here to give you real estate solutions'),
  Faq(
      question:
          'If a client wants to re-sell the plots they bought earlier after prices have appreciated, can you sell on behalf and how much do u charge?',
      answer:
          'Yes, we do this through some of our agents and We charge you 5% after the sale has been finalized.'),
  Faq(
      question: 'Do you have Title deeds and are they freehold or Leasehold?',
      answer: 'Yes we do. They are freehold.'),
  Faq(
      question: 'Do you accept payments in Installments?',
      answer: 'Yes we do upto 24 months.'),
];
